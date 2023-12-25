/* 
 * NAME : Boyuan Chen
 * ID: 22000017816
 * Description : 基于textbook的隐式空闲链表进行更改，使用分离链表+首次适配+根据大小类（写了一个循环判断类）+去脚部优化
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <assert.h>
#include "mm.h"
#include "memlib.h"

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/*
 * If NEXT_FIT defined use next fit search, else use first-fit search 
 */
/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)

/* Basic constants and macros */
#define WSIZE       4       /* Word and header/footer size (bytes)PREV //
  /* Double word size (bytes) */
#define CHUNKSIZE  (1<<10)  /* Extend heap by this amount (bytes) */ 
#define DSIZE       8

#define FREE_LIST_NUM 40 /*分离链表的数目*/

#define MAX(x, y) ((x) > (y)? (x) : (y))  

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc,prev)  ((size) | (alloc) | (prev)) 
#define MIN_FREE_BLOCK_SIZE 16

/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))            
#define PUT(p, val)  (*(unsigned int *)(p) = (val))    

/* Read the size and allocated fields from address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)                   
#define GET_ALLOC(p) (GET(p) & 0x1)                

#define GET_PRED(p)	(GET(p) ? basic_pointer+(GET(p)) : NULL )   
#define GET_SUCC(p)	(GET((char*)p + WSIZE) ? basic_pointer+GET((char*)(p) + WSIZE) : NULL) 
#define SET_PRED(p, ptr) 	(PUT((char *)(p), (ptr) ? (char*)(ptr) - basic_pointer : 0))
#define SET_SUCC(p, ptr)	(PUT(((char *)(p)+(WSIZE)), (ptr) ? (char*)(ptr) - basic_pointer : 0))

/* 读取/设置前一块的分配信息 */
#define GET_PREV_ALLOC(p) (GET(p) & 0x2)
#define SET_PREV_ALLOC(p) (PUT(p , (GET(p) | 0x2)))
#define SET_PREV_FREE(p) (PUT(p , (GET(p) & (~0x2))))

/* 去脚部优化所需的标记 */
#define PREV_ALLOC 0X2
#define PREV_FREE 0x0

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)                      
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE) 

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE))) 
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE))) 


/* Function prototypes for internal helper routines */
static void *extend_heap(size_t words);
static void* place(void *bp, size_t asize);
static void *find_fit(size_t asize);
static void *coalesce(void *bp);
static void delete_fromlists(void* ptr);
static void insert_tolists(void *ptr);
static int find_class(size_t size); /* 根据size计算所属链表大小类 */
/* 存放整个堆的起始地址，作为基址指针*/
static char* basic_pointer =NULL ;
/* 分离适配链表起始指针数组 */
static void** free_lists = NULL;

/* 
 * mm_init - Initialize the memory manager 
 */
int mm_init(void) 
{
    /* 分配初始堆空间大小，为FREE_LIST_NUM * DSIZE + DSIZE */
    if((basic_pointer = mem_sbrk (DSIZE * FREE_LIST_NUM +DSIZE)) == (void*) -1)
        return -1;
    /* 起始地址设置*/
    free_lists = (void**)basic_pointer;
    for(int i=0;i < FREE_LIST_NUM; i++)
    {
        free_lists[i]=NULL;
    }

    /* 设置堆的结尾部位，4字节结束块*/
    PUT((char*)(free_lists + FREE_LIST_NUM)+WSIZE,PACK(0,1,PREV_ALLOC));

    /* 扩展堆空间 */
    if(extend_heap(CHUNKSIZE / WSIZE) == NULL)
        return -1;
    return 0;

}

/* 
 * malloc - Allocate a block with at least size bytes of payload 
 */
void *malloc(size_t size) 
{
    size_t asize;      /* Adjusted block size */
    size_t extendsize; /* Amount to extend heap if no fit */
    char *bp;      

    /* Ignore spurious requests */
    if (size == 0)
        return NULL;

    /* Adjust block size to include overhead and alignment reqs. */
    if (size <= DSIZE)                                      
        asize = 2 * DSIZE;                                        
    else
        asize = DSIZE * ((size + WSIZE + (DSIZE-1)) / DSIZE); 

    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL) {  
        bp = place(bp, asize);                  
        return bp;
    }

    /* No fit found. Get more memory and place the block */
    extendsize = MAX(asize,CHUNKSIZE);                 
    if ((bp = extend_heap(extendsize/WSIZE)) == NULL)  
        return NULL;                                  
    bp = place(bp, asize);                                 
    return bp;
} 

/* 
 * free - Free a block 
 */
void free(void *bp)
{
    if (bp == 0) 
        return;

    size_t size = GET_SIZE(HDRP(bp));

    /* 设置头部和尾部信息表示未分配*/
    PUT(HDRP(bp), PACK(size, 0,GET_PREV_ALLOC(HDRP(bp))));
    PUT(FTRP(bp), PACK(size, 0,GET_PREV_ALLOC(HDRP(bp)))); 

    /* 设置下一个块的前一个块为未分配 */
    SET_PREV_FREE(HDRP(NEXT_BLKP(bp)));
    coalesce(bp);
    return;
}

/*
 * realloc - Naive implementation of realloc
 */
void *realloc(void *ptr, size_t size)
{
    //size_t oldsize;
    void *newptr;

    /* If size == 0 then this is just free, and we return NULL. */
    if(size == 0) {
        free(ptr);
        return NULL;
    }

    /* If oldptr is NULL, then this is just malloc. */
    if(ptr == NULL) {
        return malloc(size);
    }

    newptr = malloc(size);

    /* If realloc() fails the original block is left untouched  */
    if(!newptr) {
        return NULL;
    }

    /* Copy the old data. */
    size_t oldsize = GET_SIZE(HDRP(ptr));
    if(size < oldsize) oldsize = size;
    memcpy(newptr, ptr, oldsize);

    /* Free the old block. */
    free(ptr);

    return newptr;
}

/* 
 * The remaining routines are internal helper routines 
 */

/* 
 * extend_heap - Extend heap with free block and return its block pointer
 */
static void *extend_heap(size_t words) 
{
    char *bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words+1) * WSIZE : words * WSIZE; 
    if ((bp = mem_sbrk(size)) ==(void*) -1)  
        return NULL;                                        

    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0,GET_PREV_ALLOC(HDRP(bp))));         /* Free block header */   
    PUT(FTRP(bp), PACK(size, 0,GET_PREV_ALLOC(HDRP(bp))));         /* Free block footer */   
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1,PREV_FREE)); /* New epilogue header */ 

    /* Coalesce if the previous block was free */
    return coalesce(bp);                                          
}

/* 将空闲块从链表里删除 */
static void delete_fromlists(void* ptr)
{
    int index =find_class(GET_SIZE(HDRP(ptr)));
    char *prevptr =GET_PRED(ptr);
    char *nextptr = GET_SUCC(ptr);

    if(prevptr != NULL)
        SET_SUCC(prevptr,nextptr);
    else
        free_lists[index] = nextptr;
    if(nextptr!=NULL)
        SET_PRED(nextptr,prevptr);
}

/* 将新的空闲块插入链表；这里的index只是为了获取大小类指标从而方便插入*/
static void insert_tolists(void *ptr)
{
    int index= find_class(GET_SIZE(HDRP(ptr)));
    SET_SUCC(ptr,free_lists[index]);
    SET_PRED(ptr,NULL);
    free_lists[index]=ptr;
    if(GET_SUCC(ptr)!=NULL)
        SET_PRED(GET_SUCC(ptr),ptr);
}

/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block
 * 
 */
static void *coalesce(void *bp) 
{
    //size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp))); TODO
    size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    void* prevblk = PREV_BLKP(bp);
    void* nextblk = NEXT_BLKP(bp);

    if (prev_alloc && !next_alloc) {      /* Case 2 */
        size += GET_SIZE(HDRP(nextblk));
        delete_fromlists(nextblk);
        PUT(HDRP(bp), PACK(size, 0,PREV_ALLOC));
        PUT(FTRP(bp), PACK(size,0,PREV_ALLOC));
    }

    else if (!prev_alloc && next_alloc) {      /* Case 3 */
        size += GET_SIZE(FTRP(prevblk));
        delete_fromlists(prevblk);
        PUT(HDRP(prevblk), PACK(size, 0,GET_PREV_ALLOC(HDRP(prevblk))));
        PUT(FTRP(prevblk), PACK(size, 0,GET_PREV_ALLOC(HDRP(prevblk))));
        bp = prevblk;
    }

    else if (!prev_alloc && !next_alloc){                                     /* Case 4 */
        size += GET_SIZE(HDRP(prevblk)) + 
            GET_SIZE(FTRP(nextblk));
        delete_fromlists(prevblk);
        delete_fromlists((nextblk));
        
       PUT(HDRP(prevblk), PACK(size, 0,GET_PREV_ALLOC(HDRP(prevblk))));
        PUT(FTRP(prevblk), PACK(size, 0,GET_PREV_ALLOC(HDRP(prevblk)))); 
        bp = prevblk;
    }
    insert_tolists(bp);
    return bp;
}

/* 
 * place - Place block of asize bytes at start of free block bp 
 *         and split if remainder would be at least minimum block size
 */
//
//分割策略还可修
/*
static void* place(void *bp, size_t asize)
{
    size_t csize = GET_SIZE(HDRP(bp));   
    delete(bp);
    if ((csize - asize) >= (2*DSIZE)) { 
        PUT(HDRP(bp), PACK(asize, 1,GET_PREV_ALLOC(HDRP(bp))));
        PUT(FTRP(bp), PACK(asize, 1,GET_PREV_ALLOC(HDRP(bp))));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize-asize, 0,PREV_ALLOC));
        PUT(FTRP(bp), PACK(csize-asize, 0,PREV_ALLOC));
        insert(bp);
    }
    else { 
        PUT(HDRP(bp), PACK(csize, 1,GET_PREV_ALLOC(HDRP(bp))));
        PUT(FTRP(bp), PACK(csize, 1,GET_PREV_ALLOC(HDRP(bp))));
    }
    return bp;
}
*/
static void* place(void* bp, size_t asize)
{

    size_t size = GET_SIZE(HDRP(bp));
    delete_fromlists(bp);

    /* 如果剩余空间不足以形成一个最小块大小，则不进行分割 */
    if ((size-asize)< MIN_FREE_BLOCK_SIZE) {
        PUT(HDRP(bp), PACK(size, 1, GET_PREV_ALLOC(HDRP(bp))));
        SET_PREV_ALLOC(HDRP(NEXT_BLKP(bp)));
    }
    else {

        /* 设置当前块的头部信息表示已分配 */
        PUT(HDRP(bp), PACK(asize, 1, GET_PREV_ALLOC(HDRP(bp))));
        void* ptr = NEXT_BLKP(bp);

        /* 设置剩余块头部和尾部信息表示未分配 */
        PUT(HDRP(ptr), PACK((size-asize), 0, PREV_ALLOC));
        PUT(FTRP(ptr), PACK((size-asize), 0, PREV_ALLOC));
        insert_tolists(ptr);
    }
    return bp;
}

static int find_class(size_t size) {
    int i;
    for(i = 4; i <=22; i++){
        if(size <= (1 << i))
            return i-4;
    }
    return i-4;
}
/* 
 * find_fit - Find a fit for a block with asize bytes 
    使用首次适配
 */
static void *find_fit(size_t asize)
{
    int index = find_class(asize);
    void* p = NULL;
    for (; index < FREE_LIST_NUM; index++) {
        p = free_lists[index];
        /*使用首次适配*/
            while (p != NULL) {
                if (asize <= GET_SIZE(HDRP(p)))
                    return p;
                p = GET_SUCC(p);
            }
        
    }
    return NULL;
}

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc (size_t nmemb, size_t size) {
    size_t bytes = nmemb * size;
    void *newptr;

    newptr = malloc(bytes);
    memset(newptr, 0, bytes);

    return newptr;
}


/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */

static int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}


/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */

static int aligned(const void *p) {
    return (size_t)ALIGN(p) == (size_t)p;
}


void mm_checkheap(int lineno)
{

    void* ptr = NULL;
    void* prev_ptr = NULL;

    /*从头部开始遍历所有块，包括已分配块和未分配块 */
    for (ptr = ((char*)(free_lists + FREE_LIST_NUM) + DSIZE); ;
        prev_ptr = ptr, ptr = NEXT_BLKP(ptr)) {

        /* 遇到终止块(size:0 tag:1)，表明遍历结束，正常退出 */
        if (GET_SIZE(HDRP(ptr)) == 0 && GET_ALLOC(HDRP(ptr))) {
            break;
        }

        /* 检查当前块是否在堆的地址范围内 */
        if (!(in_heap(ptr))) {
            printf("block %lx not in heap",
                (unsigned long)ptr);
             printf("PTR_size: %u, PTR_alloc: %u, PTR_prev_alloc: %u\n",GET_SIZE(HDRP(ptr)),GET_ALLOC(HDRP(ptr)),GET_PREV_ALLOC(HDRP(ptr)));
        }
        
        /* 检查指针是否8字节对齐 */
        if (!(aligned(ptr))) {
            printf("pointer %lx not aligned\n", (unsigned long)ptr);
            printf("PTR_size: %u, PTR_alloc: %u, PTR_prev_alloc: %u\n",GET_SIZE(HDRP(ptr)),GET_ALLOC(HDRP(ptr)),GET_PREV_ALLOC(HDRP(ptr)));
            exit(1);
        }


    }

    /* 遍历分离空闲链表的每一节 */
    for (int i = 0; i < FREE_LIST_NUM; ++i) {
        void* ptr = NULL;
        void* prev_ptr = NULL;
        for (ptr = free_lists[i]; ptr != NULL; prev_ptr = ptr, ptr = GET_SUCC(ptr)) {
            
            /* 检查空闲链表指针是否都在堆地址范围内 */
            if (!(in_heap(ptr))) {
                printf("block pointer %lx",
                    (unsigned long)ptr);
                exit(1);
            }
            

            if (prev_ptr) {
                /* 检查空闲链表相邻链节之间的succ/pred指针是否对应正确 */
                if (!(GET_SUCC(prev_ptr) == ptr && prev_ptr == GET_PRED(ptr))) {
                    printf("free block %lx and %lx 's pointer mismatch\n",
                        (unsigned long)prev_ptr, (unsigned long)ptr);
                    printf("PTR_size: %u, PTR_alloc: %u, PTR_prev_alloc: %u\n",GET_SIZE(HDRP(prev_ptr)),GET_ALLOC(HDRP(prev_ptr)),GET_PREV_ALLOC(HDRP(prev_ptr)));
                    printf("prev_block succ -> %lx\n",
                        (unsigned long)GET_SUCC(prev_ptr));
                    printf("PTR_size: %u, PTR_alloc: %u, PTR_prev_alloc: %u\n",GET_SIZE(HDRP(ptr)),GET_ALLOC(HDRP(ptr)),GET_PREV_ALLOC(HDRP(ptr)));
                    printf("block pred -> %lx\n",
                        (unsigned long)GET_PRED(ptr));
                    exit(1);
                }
            }
        }

    }

    return;
}

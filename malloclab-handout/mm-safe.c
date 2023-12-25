/*
 * mm.c
 *
 * Name : Boyuan Chen
 * ID : 2200017816
 * Description of the Code :
 * Segragated Free Lists 使用分离空闲链表
 * 
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
#define DEBUG
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)
#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))
/* 去脚部优化所需的标记，在头脚部空闲低2位上，标记前一个block是已分配/空闲 */
//#define PREV_ALLOC 0x2 
//#define PREV_FREE 0x0
/* Define Necessary Constants and Macros*/
#define WSIZE 4 /* Word and header/footer size (bytes)*/
#define DSIZE 8 /* Double word size (bytes) */
#define CHUNKSIZE (1<<12) /*Extend heap by this amount (bytes)*/
#define STARTSIZE (1<<8) /*TODO 需要进一步确定这个值*/

#define MAX(x,y) ((x)>(y)?(x):(y))
#define MIN(x,y) ((x)<(y)?(x):(y))

/* Pack a size and allocated and prev allocated bit into a word*/
#define PACK(size,alloc) ((size) | (alloc))

/* Read and write a word at address p 读写指针的位置*/
#define GET(p) (*(unsigned int*)(p))
#define PUT(p, val)  (*(unsigned int *)(p) = (val))   

/* 给定序号找到链表的头位置*/
#define GET_HEAD(num)  (unsigned int *)(long)(GET(heap_listp+WSIZE*num))

/* 给定bp 找到前驱和后继*/
#define GET_PREV(bp)    ((unsigned int *)(long)(GET(bp)))
#define GET_SUC(bp)     ((unsigned int *)(long)(GET((unsigned int *) bp + 1 )))

/* 读地址存的指针*/
#define GET_PTR(p)     ((unsigned int *)(long)(GET(p)))


/* Read the size and allocated fields from address p*/
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

#define CLASS_SIZE 20

/* Given block ptr bp, compute the address of its header and footer*/
#define HDRP(bp)    ((char*)(bp) - WSIZE)
#define FTRP(bp)    ((char*)(bp) + GET_SIZE(HDRP(bp))-DSIZE)

/* Given block ptr bp, compute the address of next and previous blocks*/
#define NEXT_BLKP(bp)       ((char*)(bp) + GET_SIZE(((char*)(bp)-WSIZE)))
#define PREV_BLKP(bp)       ((char*)(bp) - GET_SIZE(((char*)(bp)-DSIZE)))

/* Function prototypes for internal helper routines*/
static void* extend_heap(size_t words);
static void* coalesce(void* bp);

/* 指向序言块的第二块*/
static char* heap_listp;

static void* extend_heap(size_t words);  //扩展堆
static void* coalesce(void *bp);        //合并空闲块
static void* find_fit(size_t asize);    //找到匹配块
static void place(void*bp, size_t asize); //分割空闲块
static void remove_from_freelists(void * bp);          //在对应链表中删除块
static void insert_to_freelists(void* bp);           //在对应的链表里插入块
static  int search(size_t size);        //根据块大小，找到头节点位置

/*TODO 先实现一个基础版本的跑一下看看效果*/
static void* extend_heap(size_t words)
{
    /* bp points to 有效载荷*/
    char *bp;
    size_t size;
    size= (words % 2) ? (words + 1) *WSIZE :words *WSIZE;

    if((long)(bp=mem_sbrk(size)) == -1)
        return NULL;
    
    /* set footer and header */
    PUT(HDRP(bp),PACK(size,0));     /* Free block header */
    PUT(FTRP(bp),PACK(size,0));     /* Free block footer */
    PUT(HDRP(NEXT_BLKP(bp)),PACK(0,1));        /* New epilogue header */

    return coalesce(bp); /* merge free block*/


}

/* Control of linked list */
/* Insert prt into freelists */
/* 这里的性能应该是可以再优化*/
static void insert_to_freelists (void*bp)
{
    /* block size */
    size_t size = GET_SIZE(HDRP(bp));
    /* 根据块大小找到头节点的位置 */
    int num=search(size);

    /* 若为空则直接放入 */
    if (GET_HEAD(num)==NULL){
        PUT(heap_listp + WSIZE* num , bp);
        /* 前驱 */
        PUT(bp, NULL);
        /* 后继 */
        PUT((unsigned int *)bp + 1 ,NULL); // TODO 可以简化写个宏
    }
    else{
        /* bp 后继放第一个节点 */
        PUT((unsigned int *)bp+1,GET_HEAD(num));
        /* 第一个节点前驱放bp */
        PUT(GET_HEAD(num),bp);
        /* bp 的前驱为空*/
        PUT(bp,NULL);
        /* 头节点放bp */
        PUT(heap_listp+WSIZE*num,bp);
    }
}
/* TODO 这部分可以加一些fancy的技巧*/
int search(size_t size){
    /* 找到对应的等价类 */
    int i;
    for(i = 4;i<22;++i)
    {
        if(size<=(1<<i)){
            return i-4;
        }
    }
    return i-4;
}
static void remove_from_freelists(void *bp)
{
    /* 块大小 */
    size_t size = GET_SIZE(HDRP(bp));
    /* 根据块大小找到头节点的位置 */
    int num=search(size);
    /* 唯一节点，后继为null 前驱为null 头节点设为null */
    if(GET_PREV(bp)==NULL && GET_SUC(bp)==NULL)
    {
        PUT(heap_listp + WSIZE * num, NULL);
    }
    /* 最后一个节点 前驱的后继设置为null*/
    else if(GET_PREV(bp)!=NULL && GET_SUC(bp)==NULL)
    {
        PUT(GET_PREV(bp)+1,NULL);
    }
    /* 第一个节点，头节点设置为bp的后继 */
    else if(GET_PREV(bp)==NULL && GET_SUC(bp)!=NULL)
    {
        PUT(heap_listp + WSIZE*num, GET_SUC(bp));
        PUT(GET_SUC(bp),NULL);
    }
    /* 中间节点，前期变成后继 后继变成前驱 */
    else if(GET_PREV(bp)!=NULL && GET_SUC(bp)!=NULL)
    {
        PUT(GET_PREV(bp)+1, GET_SUC(bp));
        PUT(GET_SUC(bp),GET_PREV(bp));
    }
}
/*
 * coalesce : 合并空闲块, 将新空闲块加入链表中
*/

static void* coalesce(void *bp)
{
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

   // void *prevblk = PREV_BLKP(bp);
    //void *nextblk = NEXT_BLKP(bp);

    // TODO 这个条件判断可以优化掉
    if( prev_alloc && next_alloc)
    {
        insert_to_freelists(bp);
        return bp;
    }
    else if ( prev_alloc && !next_alloc)
    {
        /* 将后面的块删除 */
        remove_from_freelists(NEXT_BLKP(bp));
        /* 增加当前块大小*/
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp),PACK(size,0));
        PUT(FTRP(bp),PACK(size,0));
    }
    else if(!prev_alloc && next_alloc)
    {
        remove_from_freelists(PREV_BLKP(bp));
        size+=GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp),PACK(size,0));
        PUT(HDRP(PREV_BLKP(bp)),PACK(size,0));
        bp=PREV_BLKP(bp);
    }
    else{
        remove_from_freelists(NEXT_BLKP(bp));
        remove_from_freelists(PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp)))+GET_SIZE(FTRP(NEXT_BLKP(bp)));
        PUT(FTRP(NEXT_BLKP(bp)),PACK(size,0));
        PUT(HDRP(PREV_BLKP(bp)),PACK(size,0));
        bp=PREV_BLKP(bp);
    }
    insert_to_freelists(bp);
    return(bp);
}

/*
 * Initialize: return -1 on error, 0 on success.
 */

int mm_init(void) {
    /* 申请四字节空间 */
    if((heap_listp = mem_sbrk((4 + CLASS_SIZE)*WSIZE)) == (void*) -1 )
        return -1;
    /* 初始化二十个大小类头指针 */
    for (int i=0; i< CLASS_SIZE ; ++i){
        PUT(heap_listp+i*WSIZE,NULL);
    }
    /* 对齐 */
    PUT(heap_listp+CLASS_SIZE * WSIZE,0);
    /* 序言块和结尾块均设置为已分配，方便考虑边界情况 */
    PUT(heap_listp + ((1 + CLASS_SIZE) * WSIZE),PACK(DSIZE,1));
    PUT(heap_listp + ((2 + CLASS_SIZE) * WSIZE),PACK(DSIZE,1));
    PUT(heap_listp + ((3 + CLASS_SIZE) * WSIZE),PACK(0,1)); //结尾块

    /* extend free space */
    if(extend_heap(CHUNKSIZE/WSIZE) == NULL)
        return -1;
    return 0;
}
/* fit*/
void *find_fit(size_t asize)
{
    int num=search(asize);
    unsigned int*bp;
    while (num <CLASS_SIZE)
    {
        bp=GET_HEAD(num);
        while(bp){
            if(GET_SIZE(HDRP(bp))>=asize)
            {
                return (void*)bp;
            }
            bp=GET_SUC(bp);
        }
        num++;
    }
    return NULL;
}
/* place 进行空闲块分离 */
void place(void *bp, size_t asize)
{
    size_t csize = GET_SIZE(HDRP(bp));

    /* 块已分配从空闲链表中删除 */
    remove_from_freelists(bp);
    if((csize-asize)>=2*DSIZE)
    {
        PUT(HDRP(bp),PACK(asize,1));
        PUT(FTRP(bp),PACK(asize,1));
        /* bp 指向空闲块 */
        bp =NEXT_BLKP(bp);
        PUT(HDRP(bp),PACK(csize-asize,0));
        PUT(FTRP(bp),PACK(csize-asize,0));
        /* 加入分离出的空闲块 */
        insert_to_freelists(bp);
    }
    else
    {
        /* 进行填充 */
        PUT(HDRP(bp),PACK(csize,1));
        PUT(FTRP(bp),PACK(csize,1));
    }
}

/*
 * malloc
 */
void *malloc (size_t size) {
    size_t asize;
    size_t extendsize;
    char *bp;
    if (size==0)
        return NULL;
    if (size <= DSIZE)
        asize=2*DSIZE;
    else{
        asize=DSIZE*((size+(DSIZE)+(DSIZE-1)) / DSIZE);
    }
    /* 寻找合适的空闲块*/
    if((bp=find_fit(asize))!=NULL)
    {
        place(bp,asize);
        return bp;
    }
    extendsize=MAX(asize,CHUNKSIZE);
    if((bp=extend_heap(extendsize/WSIZE))==NULL)
    {
        return NULL;
    }
    place(bp,asize);
    return bp;
}

/*
 * free
 */
void free (void *ptr) {
    if(ptr==0) return;
    size_t size=GET_SIZE(HDRP(ptr));

    PUT(HDRP(ptr),PACK(size,0));
    PUT(FTRP(ptr),PACK(size,0));
    coalesce(ptr);
}

/*
 * realloc - you may want to look at mm-naive.c
 */
void *realloc(void *oldptr, size_t size) {
    /* size 为 0 时 返回null*/
    void *newptr;
    size_t copy_size;

    if((newptr=malloc(size))==NULL)
        return 0;
    copy_size=GET_SIZE(HDRP(oldptr));
    if(size<copy_size)
    {
        copy_size=size;
    }
    memcpy(newptr,oldptr,copy_size);
    free(oldptr);
    return newptr;
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

/*
 * mm_checkheap
 */
void mm_checkheap(int lineno) {
    lineno=lineno;
}


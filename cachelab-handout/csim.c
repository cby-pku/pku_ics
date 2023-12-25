/*
Part A:
Name: Boyuan Chen
ID: 2200017816
*/
#include<stdio.h>
#include "cachelab.h"
#include <stdlib.h>
#include <unistd.h>
#include <limits.h>
#include <getopt.h>
#include <string.h>
#include<stdbool.h>

// 定义cache的一行
typedef struct line
{
    bool isvalid;//有效位
    int tag;//标记位
    // 无需存储内容，只需要记录命中、脱靶和驱逐的数目
    int stamp;//时间戳
} line;
// 定义cache结构
typedef line* set;// 定义组

typedef struct cache
{
    set* pointer;
    int line_num;//行数
    int set_num;//组数
    int block_bit;//block里的偏移量
    int set_bit;//索引位

} cache;
//分配cache内存
cache allocation(int s,int b ,int e){
    int set_num=1<<s;
    set*pointer=malloc(sizeof(set)*set_num);
    for(int i=0;i<set_num;++i){
        pointer[i]=malloc(sizeof(line)*e);//malloc分配内存,calloc分配内存并初始化为0
        for(int j=0;j<e;++j){
            pointer[i][j].isvalid=0;//这里应该初始化为0而非-1
            pointer[i][j].tag=-1;
            pointer[i][j].stamp=-1;
        }
    }
    cache c ={pointer,e,set_num,b,s};
    return c;
}
//释放cache内存
void free_cache(cache*c){
    for(int i=0;i<c->set_num;++i){
        free(c->pointer[i]);
        c->pointer[i]=NULL;
    }
    free(c->pointer);
    c->pointer=NULL;
}
//测试文件指令
typedef struct operation
{
    char op;// 确定操作
    int size;//访问字节数
    unsigned long address; 
    //地址是64位,而不是32位，需要用%lx读地址,并用unsigned long储存
}operation;

//从特定地址中获取set的索引
static inline unsigned get_set (unsigned long address,int s,int b)
{
    return (address>>b)%(1<<s);//从datalab中学到的取后几位的技巧

}
//获取tag的索引值
static inline unsigned get_tag(unsigned long address,int s,int b )
{
    return address>>(b+s);
}

int OP_LEN=128;
//抓取指令，一次读入一个操作
operation fetch(FILE*pfile)
{
    char tmp[OP_LEN];
    operation tmp_op={0,0,0};
    if(!fgets(tmp,OP_LEN,pfile))
        {return tmp_op;}
    sscanf(tmp,"\n%c %lx,%d",&tmp_op.op,&tmp_op.address,&tmp_op.size);
    return tmp_op;
}

// 匹配行set-> tag ，返回地址
line* match(set s,int e,int tag)
{
    for (int i=0;i<e;++i){
        if(s[i].tag==tag&&s[i].isvalid)
        {
            return s+i;
        }
    }
    return NULL;
}

// 寻找到一个新行，返回地址
line *find_new_line(set s,int e){
    for(int i=0;i<e;++i){
        if(!(s[i].isvalid))
        {
            return s+i;
        }
    }
    return NULL;
}
//LRU替换原则
line *lru_exchange(set s,int e){
    int change_index=0;
    for(int i=1;i<e;++i){
        if(s[i].stamp<s[change_index].stamp){
        //stamp记录访问的时间戳
        // 记录更长的访问时间，每次hit一次刷新stamp
            change_index=i;
        }
    }
    return s+change_index;
}
int hit_num=0;//命中计数
int miss_num=0;//miss计数
int timestamp=0;//时间戳
int lru_count=0;//LRU替换 驱逐计数
//load or store 可以合并展现trace 实现-v 的要求
void load_store(cache*c,operation*op,bool v,bool calledbymodify)//最后一个参数为true是called by modify
//获取一个cache 和对应的操作，以及是否显示轨迹v
{
    int s=get_set(op->address,c->set_bit,c->block_bit);
    int t=get_tag(op->address,c->set_bit,c->block_bit);
    if(v&&!calledbymodify){
        printf("%c %lx,%d ",op->op,op->address,op->size);
    }
    line* check_hit=match(c->pointer[s],c->line_num,t);
    if(check_hit)//查看是否命中
    {
        hit_num++;
        if(v) printf("hit ");
    }
    else{
        //未命中，首先尝试找一新行
        miss_num++;
        if(v)printf("v ");

        check_hit=find_new_line(c->pointer[s],c->line_num);
        if(check_hit){
            check_hit->isvalid=true;
        }
        else{//新行未找到，驱逐
        ++lru_count;
        check_hit=lru_exchange(c->pointer[s],c->line_num);
        if(v)printf("eviction ");
        }
        check_hit->tag=t;
    }
    check_hit->stamp=timestamp;//当前这个是第几轮访问的，轮数越大要靠近新输入，要驱逐轮数最小的
    timestamp++;
    if(v)printf("\n");

}

//modify
void modify(cache*c,operation*operato,bool v){
    if(v){
        printf("%c %lx,%d ",operato->op,operato->address,operato->size);
    }
    //modify可以看为先load 再store 
    operato->op='L';
    load_store(c,operato,v,true);
    operato->op='S';
    load_store(c,operato,v,true);
    if(v)printf("\n");
}

void print_help()//打印帮助函数
{
    printf("Usage: ./csim-ref [-hv] -s <num> -E <num> -b <num> -t <file>\n"
            "Options:\n"
            "  -h         Print this help message.\n"
            "  -v         Optional verbose flag.\n"
            "  -s <num>   Number of set index bits.\n"
            "  -E <num>   Number of lines per set.\n"
            "  -b <num>   Number of block offset bits.\n"
            "  -t <file>  Trace file.\n\n"
            "Examples:\n"
            "  linux>  ./csim-ref -s 4 -E 1 -b 4 -t traces/yi.trace\n"
            "  linux>  ./csim-ref -v -s 8 -E 2 -b 4 -t traces/yi.trace\n");

}

int main(int argc,char*argv[]){
    int option;
    int s=0,E=0,b=0,v=0;
    FILE *pflie=NULL;
    while((option=getopt(argc,argv,"hvs:E:b:t:"))!=-1){//读取操作符
        switch (option)
        {
        case 'h':
            print_help();
            return 0;
        case 'v':
            v=1;
            break;
        case 's':
            s=atoi(optarg);
            break;
        case 'E':
            E=atoi(optarg);
            break;
        case 'b':
            b=atoi(optarg);
            break;
        case 't':
            pflie=fopen(optarg,"r");
            break;
        default:
            print_help();
            return 0;
        }
    }
    cache c=allocation(s,b,E);
    operation o;
    while((o=fetch(pflie)).op){
        if(o.op=='M')
        {modify(&c,&o,v);}
        else if(o.op=='L'||o.op=='S'){
            load_store(&c,&o,v,false);//不是来自于modify
        }
        else if(o.op=='I'){
            continue;
        }
    }
    //关闭文件，释放，输出
    fclose(pflie);
    free_cache(&c);
    printSummary(hit_num,miss_num,lru_count);
    return 0;

}
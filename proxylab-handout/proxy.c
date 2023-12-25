/*
 * Name : Boyuan Chen 陈博远
 * ID : 2200017816
 * Description:
 * 用预线程化实现Concurrency
 * 在Proxy.c中直接定义cache的相关缓存结构,采用读优先策略，实现多线程下的缓存
 * 
 * 
 */
/*!  Remember to ensure that your account for binary data when selecting and using function for network I/O and cache
 (use memcpy instead of strcpy)*/
#include <stdio.h>
#include"csapp.h"
/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000 // Maximum size <= 1MiB
#define MAX_OBJECT_SIZE 102400 // Maximum object size <=100KiB
#define NTHREADS 32
#define SUBFSIZE 32
#define MAX_CACHE 48
/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
/* This is code for my User-Agent header*/

/* Cache Line LRU realization*/
/*! FIXME 7 Rewrite cache by another way*/
typedef struct 
{
    char buf[MAX_OBJECT_SIZE];
    char uri[MAXLINE];
    int num;
    int timestamp;
    int valid;

    //int read_cnt;
    //sem_t mutex,writer;
}block;
typedef struct {
    block data[MAX_CACHE];
    int curTime;
    int read_cnt;
    sem_t mutex,writer;
}Cache;
Cache cache;
void cache_init(){
    cache.read_cnt=0;
    cache.curTime = 0;
    Sem_init(&cache.mutex,0,1);
    Sem_init(&cache.writer,0,1);
    for(int i=0;i<MAX_CACHE;i++){
        cache.data[i].valid=0;
        cache.data[i].timestamp = 0;
        cache.data[i].num = 0;

    //    cache.data[i].read_cnt=0;
    //    Sem_init(&cache.data[i].mutex,0,1);
    //    Sem_init(&cache.data[i].writer,0,1);

    }
}

int get_Cache(char * uri)
{
    int ret = -1;
    for(int i = 0 ;i<MAX_CACHE;i++){
        if(cache.data[i].valid && !strcmp(cache.data[i].uri,uri)){
            ret = i;
        }
    }
    return ret;
}
void write_Cache(char * buf, char *uri,int size)
{
    /*! actually this can be ignored*/
    //if(size > MAX_OBJECT_SIZE)return ;
    int idx=-1;
    for(int i=0;i<MAX_CACHE;++i){
        if(cache.data[i].valid==0){
            idx =i;break;
        }
    }
    if(idx == -1){
        /* LRU Policy*/
        
        int tmptime =0;
        for(int i=0;i<MAX_CACHE;i++){
            if(cache.data[i].valid &&cache.curTime - cache.data[i].timestamp >tmptime)
            {
                tmptime = cache.curTime - cache.data[i].timestamp;
                idx = i;
            }
        }
    }
    P(&cache.writer);
    memcpy(cache.data[idx].buf,buf,size);
    strcpy(cache.data[idx].uri,uri);
    cache.data[idx].num = size;
    cache.data[idx].timestamp = ++cache.curTime;
    cache.data[idx].valid =1;
    V(&cache.writer);
}
/* main(): waiting for the connection of client*/
struct Uri_data
{
    char host[MAXLINE]; //hostname
    char port[MAXLINE]; //端口
    char path[MAXLINE]; //路径
};
/* Producer - Consumer Model*/
typedef struct{
    int *buf ;
    int n;    //Max number of slots
    int front;  // buf[(front+1)%n] is the first item
    int rear;     // buf[rear % n] is the last item
    sem_t mutex;  // init as 1 , to protect buf
    sem_t slots;  // init as n to note slots
    sem_t items;  // init as 0 to note items
}sbuf_t;
void sbuf_insert(sbuf_t *sp, int item)
{
    P(&sp->slots);
    P(&sp->mutex);
    sp->buf[(++sp->rear)%(sp->n)] = item;
    V(&sp->mutex);
    V(&sp->items);
}
int sbuf_remove(sbuf_t *sp)
{
    int item;
    P(&sp->items);
    P(&sp->mutex);
    item = sp->buf[(++sp->front)%(sp->n)];
    V(&sp->mutex);
    V(&sp->slots);
    return item;
}

void sbuf_init(sbuf_t*sp,int n){
    sp->buf = Calloc(n,sizeof(int));
    sp->n =n;
    sp->front =sp->rear =0;
    Sem_init(&sp->mutex,0,1);
    Sem_init(&sp->slots,0,n);
    Sem_init(&sp->items,0,0);

}

void sbuf_deinit(sbuf_t * sp){
    Free(sp->buf);
}
void doit(int fd);
void *thread(void* vargp);
void *pthread(void* vargp);
void parse_uri(char *uri, struct Uri_data *uri_data);
void forward_header(char* buf, struct Uri_data* uri_data,rio_t* rp);
void clienterror(int fd, char *cause, char *errnum, char *shortmsg, char *longmsg) ;
void sigchld_handler(int sig){ // reap all children
    int b_errno = errno;
    while(waitpid(-1,NULL,WNOHANG)>0)
    errno = b_errno;

}
sbuf_t sbuf; /* Shared buffer of connected decriptors*/

int main(int argc, char ** argv)
{
    // Remember to process SIGPIPE signal
    signal(SIGPIPE,SIG_IGN);
    // connect SIGCHLD with handler to recycle all subprocesses
    signal(SIGCHLD, sigchld_handler);

    int listenfd,connfd;
    char hostname[MAXLINE], port[MAXLINE];
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;

    pthread_t tid;

    // Check Command Line Args
    if (argc != 2){
        fprintf(stderr, "usage: %s <port>\n",argv[0]);
        exit(1);
    }
    cache_init();
    listenfd = Open_listenfd(argv[1]);

    sbuf_init(&sbuf,SUBFSIZE); 
    for(int i=0;i<NTHREADS;i++){
        Pthread_create(&tid,NULL,thread,NULL);
    }
    //int *connfd;
    //sem_t mutex;
    while(1){
        clientlen = sizeof(clientaddr);
        //connfd = Malloc(sizeof(int));
        //P(&mutex);
        connfd = Accept(listenfd, (SA *)&clientaddr, &clientlen); // accept
        
        sbuf_insert(&sbuf,connfd);
        //V(&mutex);
        Getnameinfo((SA *)&clientaddr, clientlen, hostname, MAXLINE,
        port, MAXLINE,0);
        printf("Accepted connection from (%s, %s)\n", hostname, port);
        //doit(connfd);
        //sbuf_insert(&sbuf,connfd);
        //close(connfd);
        //sbuf_insert(&sbuf,connfzd);
        //Pthread_create(&tid,NULL,pthread,connfd);

    }
    printf("%s", user_agent_hdr);
    return 0;
}
/* During the latter half ,the request should be forwarded to server */
void doit(int fd)
{
    char buf[MAXLINE],method[MAXLINE],uri[MAXLINE],version[MAXLINE];
    char server[MAXLINE];

    // s_rio is the rio of the server
    rio_t rio, s_rio;
    char cache_tag[MAXLINE];
    Rio_readinitb(&rio,fd);
    /*FIX1 change to readnb: failed*/
    if(!Rio_readlineb(&rio,buf, MAXLINE)){
        return;
    }
    //printf("%s", buf);

    sscanf(buf, "%s %s %s",method, uri, version); // parser request

    strcpy(cache_tag,uri);

    if(strcasecmp(method, "GET")){
        // printf("Proxy does not implement the method");
        clienterror(fd, method, "501", "Not Implemented",
        "Proxy does not implement this method");
        return ;
    }
    struct Uri_data * uri_data = (struct Uri_data*) malloc(sizeof(struct  Uri_data));

    // analyze whether cache have this according to uri
    int i;
    if((i = get_Cache(cache_tag))!=-1)
    {
        // lock
        P(&cache.mutex);
        cache.read_cnt++;
        if(cache.read_cnt==1)
        {
            P(&cache.writer);
        }
        V(&cache.mutex);

        Rio_writen(fd, cache.data[i].buf,cache.data[i].num);

        P(&cache.mutex);
        cache.read_cnt--;
        if(cache.read_cnt==0)
        {
            V(&cache.writer);
        }
        V(&cache.mutex);
        return;

    }



    // analysis uri
    parse_uri(uri, uri_data);

    // header setting 
    forward_header(server, uri_data, &rio);

    // connect to server

    // 转发代码
    int serverfd = Open_clientfd(uri_data->host,uri_data->port);
    if(serverfd < 0){
        printf("connection failed\n");
        return ;
    }
    // forward to server
    Rio_readinitb(&s_rio, serverfd);
    Rio_writen(serverfd, server,strlen(server));

    char cachebuf[MAX_OBJECT_SIZE];
    /*! FIXE6 加上cache初始化*/
    memset(cachebuf,0,sizeof(cachebuf));
    int bufsize =0;
    
    size_t n;
    int can_cache = 1;
    // responses to the server
    /* FIX2 : use readnb instead of readlineb success*/
    while((n = Rio_readnb(&s_rio, buf, MAXLINE))!=0)
    {
        Rio_writen(fd,buf,n);
        printf("proxy received %d bytes, then send\n",(int)n);
        if (can_cache){
            bufsize+=n;
            if(bufsize>MAX_OBJECT_SIZE)
            {can_cache=0;}
            else{
                memcpy(cachebuf + bufsize - n,buf,n);
            }
        }
        //printf("proxy received %d bytes, then send\n",(int)n);
    }
    // remember to close fd
    //Close(serverfd);
    if(can_cache)
        {write_Cache(cachebuf,cache_tag,bufsize);}
    //Free(uri_data);
    Close(serverfd);
    //Close(serverfd);

}

void parse_uri(char *uri, struct Uri_data *uri_data)
{
    char *host = strstr(uri, "//");
    if(host==NULL){
        // set the default port -> 80
        char *path = strstr(uri, "/");
        if(path != NULL)
        {
            strcpy(uri_data->path,path);
        }
        strcpy(uri_data->port,"80");
        return ;
    }
    else{
        char *portpos = strstr(host + 2, ":");
        if(portpos !=NULL){
            int tmp;
            sscanf(portpos+1,"%d%s",&tmp,uri_data->path);
            sprintf(uri_data->port,"%d",tmp);
            *portpos='\0';
        }
        else{
            char *pathpos = strstr(host+2,"/");
            if(pathpos !=NULL){
                strcpy(uri_data->path,pathpos);
                strcpy(uri_data->port,"80");
                *pathpos = '\0';
            }
        }
        strcpy(uri_data->host,host+2);
    }
    return ;
}
void forward_header(char* buf, struct Uri_data* uri_data,rio_t* rp)
{
    char tmp[MAXLINE],getline[MAXLINE],hostline[MAXLINE];
    char userAgentLine[MAXLINE], connectionline[MAXLINE],proxyconnectionline[MAXLINE];
    sprintf(getline,"GET %s HTTP/1.0\r\n",uri_data->path);
    sprintf(hostline,"Host: %s\r\n",uri_data->host);
    sprintf(userAgentLine,"User-Agent: %s",user_agent_hdr);
    sprintf(connectionline,"Connection: close\r\n");
    sprintf(proxyconnectionline,"Proxy-Connection: close\r\n");

    char *ptr = buf;
    sprintf(ptr, getline);ptr+=strlen(getline);
    sprintf(ptr,hostline); ptr+=strlen(hostline);
    sprintf(ptr,userAgentLine); ptr+=strlen(userAgentLine);
    sprintf(ptr,connectionline); ptr+=strlen(connectionline);
    sprintf(ptr, proxyconnectionline);ptr += strlen(proxyconnectionline);

    Rio_readlineb(rp,tmp,MAXLINE);
    while(strcmp(tmp,"\r\n")){
        if(!strncasecmp(tmp,"Host",strlen("Host")) || !strncasecmp(tmp,"User-Agent",strlen("User-Agent"))
        || !strncasecmp(tmp,"Proxy-Connection",strlen("Proxy-Connection"))
        || !strncasecmp(tmp,"Connection",strlen("Connection"))){
            Rio_readlineb(rp,tmp,MAXLINE);
            continue;
        }
        sprintf(ptr,tmp);ptr+=strlen(tmp);
        Rio_readlineb(rp,tmp,MAXLINE);

    }
    sprintf(ptr,"\r\n");
}
void clienterror(int fd, char *cause, char *errnum, 
		 char *shortmsg, char *longmsg) 
{
    char buf[MAXLINE], body[MAXBUF];

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wformat-overflow"
    /* Build the HTTP response body */
    sprintf(body, "<html><title>Tiny Error</title>");
    sprintf(body, "%s<body bgcolor=""ffffff"">\r\n", body);
    sprintf(body, "%s%s: %s\r\n", body, errnum, shortmsg);
    sprintf(body, "%s<p>%s: %s\r\n", body, longmsg, cause);
    sprintf(body, "%s<hr><em>The Tiny Web server</em>\r\n", body);
#pragma GCC diagnostic pop

    /* Print the HTTP response */
    sprintf(buf, "HTTP/1.0 %s %s\r\n", errnum, shortmsg);
    rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-type: text/html\r\n");
    rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-length: %d\r\n\r\n", (int)strlen(body));
    rio_writen(fd, buf, strlen(buf));
    rio_writen(fd, body, strlen(body));
}
void *thread(void *vargp)
{
    Pthread_detach(pthread_self());
    while(1){
        int connfd = sbuf_remove(&sbuf);
        doit(connfd);
        Close(connfd);
    }
}
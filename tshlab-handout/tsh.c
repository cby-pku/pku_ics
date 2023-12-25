/* 
 * tsh - A tiny shell program with job control
 * 
 * <Boyuan Chen 2200017816>
 * 
 * 首先想到填充好eval\sigchld_handler\sigtstp_handler\sigint_handler 也就是子进程 ctrl+z ctrl+c的信号处理和命令行的解析
 * 辅助函数builtin_command，对于内置命令进行处理，包含jobs\fg\bg\kill\quit等
 * 辅助函数do_bgfg对于前台和后台工作进行处理
 * 辅助函数 build_kill 对于kill命令进行特别的判断
 * 函数sigtstp_handler 对于ctrl+z信号作出反应，做好errno备份和信号阻塞恢复
 * 函数sigint_handler 对于ctrl+c信号作出反应，做好errno备份和信号阻塞恢复
 * 函数sigchld_handler 处理子进程的相关信号
 * 函数reIO重定向函数
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <signal.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/wait.h>
#include <errno.h>
#include <stdarg.h>


/* Misc manifest constants */
#define MAXLINE    1024   /* max line size */
#define MAXARGS     128   /* max args on a command line */
#define MAXJOBS      16   /* max jobs at any point in time */
#define MAXJID    1<<16   /* max job ID */

/* Job states */
#define UNDEF         0   /* undefined */
#define FG            1   /* running in foreground */ //这里对前台后台的定义需要额外注意！
#define BG            2   /* running in background */
#define ST            3   /* stopped */

/* 
 * Jobs states: FG (foreground), BG (background), ST (stopped)
 * Job state transitions and enabling actions:
 *     FG -> ST  : ctrl-z
 *     ST -> FG  : fg command
 *     ST -> BG  : bg command
 *     BG -> FG  : fg command
 * At most 1 job can be in the FG state.
 */
// 这部分是对工作流的操作提示

/* Parsing states */
#define ST_NORMAL   0x0   /* next token is an argument */
#define ST_INFILE   0x1   /* next token is the input file */
#define ST_OUTFILE  0x2   /* next token is the output file */

/* Global variables */
extern char **environ;      /* defined in libc */
char prompt[] = "tsh> ";    /* command line prompt (DO NOT CHANGE) *//*默认的tsh前缀输出*/
int verbose = 0;            /* if true, print additional output */
int nextjid = 1;            /* next job ID to allocate */
char sbuf[MAXLINE];         /* for composing sprintf messages */

/* 对于job相关工作的定义，尤其要注意等变量是在这里定义的*/
struct job_t {              /* The job struct */
    pid_t pid;              /* job PID */
    int jid;                /* job ID [1, 2, ...] */
    int state;              /* UNDEF, BG, FG, or ST */
    char cmdline[MAXLINE];  /* command line */
};
struct job_t job_list[MAXJOBS]; /* The job list */

/*对于builtin_command的处理可能要用到*/
struct cmdline_tokens {
    int argc;               /* Number of arguments */
    char *argv[MAXARGS];    /* The arguments list */
    char *infile;           /* The input file */
    char *outfile;          /* The output file */
    enum builtins_t {       /* Indicates if argv[0] is a builtin command */
        BUILTIN_NONE,
        BUILTIN_QUIT,
        BUILTIN_JOBS,
        BUILTIN_BG,
        BUILTIN_FG,
        BUILTIN_KILL,
        BUILTIN_NOHUP} builtins;
};

/* End global variables */

/* Function prototypes */
//这里是我们主要要写的
void eval(char *cmdline);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);



/* Here are helper routines that we've provided for you */
int parseline(const char *cmdline, struct cmdline_tokens *tok); 
void sigquit_handler(int sig);

/*这里是一些有关job的定义*/
void clearjob(struct job_t *job);
void initjobs(struct job_t *job_list);
int maxjid(struct job_t *job_list); 
int addjob(struct job_t *job_list, pid_t pid, int state, char *cmdline);
int deletejob(struct job_t *job_list, pid_t pid); 

/*对于进程组和工作组的操作函数*/
pid_t fgpid(struct job_t *job_list);
struct job_t *getjobpid(struct job_t *job_list, pid_t pid);
struct job_t *getjobjid(struct job_t *job_list, int jid); 
int pid2jid(pid_t pid); 
void listjobs(struct job_t *job_list, int output_fd);


/*sio函数，和一些基本的异常处理函数*/
void usage(void);
void unix_error(char *msg);
void app_error(char *msg);
ssize_t sio_puts(char s[]);
ssize_t sio_putl(long v);
ssize_t sio_put(const char *fmt, ...);
void sio_error(char s[]);

/*信号处理函数也在这里定义了*/
typedef void handler_t(int);
handler_t *Signal(int signum, handler_t *handler);

/*
 * main - The shell's main routine 
 */
int 
main(int argc, char **argv) 
{
    char c;
    char cmdline[MAXLINE];    /* cmdline for fgets */
    int emit_prompt = 1; /* emit prompt (default) */

    /* Redirect stderr to stdout (so that driver will get all output
     * on the pipe connected to stdout) */
    dup2(1, 2);
    /*加入了重定向*/
    /* Parse the command line */
    while ((c = getopt(argc, argv, "hvp")) != EOF) {
        switch (c) {
        case 'h':             /* print help message */
            usage();
            break;
        case 'v':             /* emit additional diagnostic info */
            verbose = 1;
            break;
        case 'p':             /* don't print a prompt */
            emit_prompt = 0;  /* handy for automatic testing */
            break;
        default:
            usage();
        }
    }

    /* Install the signal handlers */

    /* These are the ones you will need to implement */
    Signal(SIGINT,  sigint_handler);   /* ctrl-c */
    Signal(SIGTSTP, sigtstp_handler);  /* ctrl-z */
    Signal(SIGCHLD, sigchld_handler);  /* Terminated or stopped child */
    Signal(SIGTTIN, SIG_IGN);
    Signal(SIGTTOU, SIG_IGN);

    /* This one provides a clean way to kill the shell */
    Signal(SIGQUIT, sigquit_handler); 

    /* Initialize the job list */
    initjobs(job_list);

    /* Execute the shell's read/eval loop */
    while (1) {

        if (emit_prompt) {
            printf("%s", prompt);
            fflush(stdout);
        }
        if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin))
            app_error("fgets error");
        if (feof(stdin)) { 
            /* End of file (ctrl-d) */
            printf ("\n");
            fflush(stdout);
            fflush(stderr);
            exit(0);
        }
        
        /* Remove the trailing newline */
        cmdline[strlen(cmdline)-1] = '\0';
        
        /* Evaluate the command line */
        eval(cmdline);
        
        fflush(stdout);
        fflush(stdout);
    } 
    
    exit(0); /* control never reaches here */
}

/* 
 * eval - Evaluate the command line that the user has just typed in
 * 
 * If the user has requested a built-in command (quit, jobs, bg or fg)
 * then execute it immediately. Otherwise, fork a child process and
 * run the job in the context of the child. If the job is running in
 * the foreground, wait for it to terminate and then return.  Note:
 * each child process must have a unique process group ID so that our
 * background children don't receive SIGINT (SIGTSTP) from the kernel
 * when we type ctrl-c (ctrl-z) at the keyboard.  
 */


/* 补充builtin_command 辅助函数的辅助函数do_bgfg 对于前台和后台进行处理*/
/* 对于job相关工作的定义，尤其要注意等变量是在这里定义的*/
/* 此处要用到的结构
struct job_t {              // The job struct 
    pid_t pid;              // job PID 
    int jid;                // job ID [1, 2, ...] 
    int state;              // UNDEF, BG, FG, or ST 
    char cmdline[MAXLINE];  // command line 
};
struct job_t job_list[MAXJOBS]; // The job list 

*/
/*对于一个输入的指令，首先判定它是合法的；其次根据不同情况(PID JID)，获得
 *获得对应的job指针*/

void 
do_bgfg(const struct cmdline_tokens tok)
{
    /*未输入参数*/
    if(tok.argv[1]==NULL){
        sio_put(tok.argv[0]);
        sio_put(" command requires PID or %%jobid argument\n");
        return ;
    }
    //char* cmdl=tok.argv[1];
    pid_t pid,jid;
    char *tmp=tok.argv[1];
    int is_job=0;
    struct job_t* job_pointer=NULL;
    if(tmp[0]!='%'&&tmp[0]>='0'&&tmp[0]<='9')/*输入一个PID时*/
    {
        pid=atoi(tmp);
        job_pointer=getjobpid(job_list,pid);
        if((job_pointer->state==UNDEF)||(job_pointer==NULL)){
            /*没有找到在进程中该pid*/
            sio_put("(%d): No such process\n",pid);
            return;
        }
    }
    else if(tmp[0]=='%')/*输入jid时*/
    {
        is_job=1;
        jid=atoi(tmp+1);
        job_pointer=getjobjid(job_list,jid);
        if((job_pointer->state==UNDEF)||(job_pointer==NULL))
        {
            sio_put("%%%d: No such job\n",jid);
            return;
        }
        
    }
    else /*非法输入*/
    {
        sio_put(tok.argv[0]);
        sio_put(": argument must be a PID or %%jobid\n");
        return;
    }
    /*处理bg job / fg job情况 restart sending SIGCONT*/
    if(tok.builtins==BUILTIN_BG)
    {
        if(job_pointer->state==ST)
        {
            /*对全部job进程发还是对于单个pid发*/
            if(is_job){
                kill(-(job_pointer->pid),SIGCONT);
            }
            else
            {
                kill((job_pointer->pid),SIGCONT);
            }
            job_pointer->state=BG;
        }
        sio_put("[%d] (%d) ",jid,job_pointer->pid);
        sio_put(job_pointer->cmdline);
        sio_put("\n");
    }
    else/*处理fg job*/
    {
        

        sigset_t mask,prev;
        sigfillset(&mask);
        

        sigprocmask(SIG_BLOCK,&mask,&prev);
        if(job_pointer->state==ST)
        {
            if(is_job){
                kill(-(job_pointer->pid),SIGCONT);
            }
            else
                kill(job_pointer->pid,SIGCONT);    
        }
        job_pointer->state=FG;
        while((pid==fgpid(job_list))){//pid==fgpid(job_list)
            sigsuspend(&prev);
        }
        sigprocmask(SIG_SETMASK,&prev,NULL);
        return;

    }
}

/*补充builtin_command 辅助函数的辅助函数build_kill 杀死程序*/
void 
build_kill(const struct cmdline_tokens tok)
{
    if(tok.argv[1]==NULL){
        sio_put(tok.argv[0]);
        sio_put(" command requires PID or %%jobid argument\n");
        return;
    }
    struct job_t* job_pointer=NULL;
    pid_t pid,jid;
    char* tmp=tok.argv[1];
    int neg=0;
    /*与do_bgfg一样，首先要做命令行合法判断*/
    if(tmp[0]!='%'&&(tmp[0]=='-'||(tmp[0]>='0'&&tmp[0]<='9')))
    {
        pid=atoi(tmp);
        if(pid<0){
            neg=1;
            pid=-pid;
        }
        job_pointer=getjobpid(job_list,pid);
        if((job_pointer->state==UNDEF)||(job_pointer==NULL))
        {
            if(neg)
                sio_put("(%d): No such process group\n",pid);
            else{
                sio_put("(%d): No such process\n",pid);
            }
            return;
        }
    }
    else if(tmp[0]=='%')
    {
        jid=atoi(tmp+1);
        if(jid<0){
            jid=-jid;
            neg=1;
        }
        job_pointer=getjobjid(job_list,jid);
        if((job_pointer==NULL)||(job_pointer->state==UNDEF))
        {
            if(neg){
                sio_put("%%%d: No such job group\n",jid);
            }
            else{
                sio_put("%%%d: No such job\n",jid);
            }
            return;
        }
    }
    else{
        sio_put(tok.argv[0]);
        sio_put(" argument must be a PID or %%jobid\n");
        return;
    }
    if(neg){
        kill(-(job_pointer->pid),SIGTERM);
    }
    else{
        kill(job_pointer->pid,SIGTERM);
    }
    
}

/*首先对于内置命令如quit bg fg jobs进行处理*/
/*需要注意的一点是，本代码原有定义中含有struct cmdline_tokens tok，
 * 所以可以直接用结构体中的函数*/
/*
struct cmdline_tokens {
    int argc;               //Number of arguments 
    char *argv[MAXARGS];    // The arguments list 
    char *infile;           // The input file 
    char *outfile;          // The output file 
    enum builtins_t {       // Indicates if argv[0] is a builtin command 
        BUILTIN_NONE,
        BUILTIN_QUIT,
        BUILTIN_JOBS,
        BUILTIN_BG,
        BUILTIN_FG,
        BUILTIN_KILL,
        BUILTIN_NOHUP} builtins;
        };
*/

void
builtin_command(const struct cmdline_tokens tok)
{

    /*To do : 信号阻塞*/
    sigset_t mask,prev;
    //sigemptyset(&empty);/*Debug 1*/
    sigfillset(&mask);
    sigprocmask(SIG_BLOCK,&mask,&prev);
    if(tok.builtins==BUILTIN_QUIT) /*quit command*/
        exit(0);
    else if (tok.builtins==BUILTIN_JOBS) /*jobs command*/
    {
        //默认先输出到标准输出流中
        listjobs(job_list,1);//！！！这里函数调用暂且少一个参数，需要补充重定向情况下的输出文件描述符
    }
    else if (tok.builtins== BUILTIN_BG || tok.builtins==BUILTIN_FG)
    {
        do_bgfg(tok); /* bg or fg command*/
    }
    else if(tok.builtins==BUILTIN_KILL){
        build_kill(tok); /* kill command*/
    }
    sigprocmask(SIG_SETMASK,&prev,NULL);
    return ;
}

/*重定向函数*/
void 
reIO(const struct cmdline_tokens tok,int*sstdin,int*sstdout,int*filein,int*fileout)
{
    if(tok.infile!=NULL){
        *sstdin=dup(STDIN_FILENO);
        if((*filein=open(tok.infile,O_RDONLY,0))<0)
        {
            sio_put("Open error: No such file or directory\n");
            return;
        }
        dup2(*filein,STDIN_FILENO);
    }
    if(tok.outfile!=NULL){
        *sstdout=dup(STDOUT_FILENO);
        if((*fileout=open(tok.outfile,O_WRONLY | O_CREAT | O_TRUNC,0))<0)
        {
            sio_put("Open error: No such file or directory\n");
            return;
        }
        dup2(*fileout,STDOUT_FILENO);
    }
    return;
    /*Todo 补充重定向函数*/
}

void
initIO(int sstdin,int sstdout,int filein,int fileout)
{
    if(sstdin>0)
    {
        dup2(sstdin,STDIN_FILENO);
        close(sstdin);
        close(filein);
    }
    if(sstdout>0)
    {
        dup2(sstdout,STDOUT_FILENO);
        close(sstdout);
        close(fileout);
    }
    return;
}
/*在这部分需要对命令行的输入进行解析，包括前台后台的操作和基本的ctrl-c ctrl-z和子进程的相关操作*/
/*特别注意可能需要考虑到重定向的问题*/
/*\076是> \046是& 切后台*/
/*需要建立bulitin_command函数，作为对于内置命令的处理，同时
 * 如果是外部程序就要fork出来，并用execve加载运行*/
/* 特别注意race的情况，需要进行信号阻塞*/
/* 需要显式的把子进程添加到新的进程组*/
void 
eval(char *cmdline) 
{
    int bg;              /* should the job run in bg or fg? */
    struct cmdline_tokens tok;

    /* Parse command line */
    bg = parseline(cmdline, &tok); 

    if (bg == -1) /* parsing error */
        return;
    if (tok.argv[0] == NULL) /* ignore empty lines */
        return;

    int sstdin=-1,sstdout=-1;
    int pfilein,pfileout;
    reIO(tok,&sstdin,&sstdout,&pfilein,&pfileout);
    if (tok.builtins!=BUILTIN_NONE &&tok.builtins!=BUILTIN_NOHUP){
        builtin_command(tok);
        /*处理内置命令*/
    }
    else{
        /*处理非内置命令和nohup*/
        sigset_t mask_all,mask_hup,prev,mask_three;
        pid_t pid;
        sigemptyset(&mask_three);
        sigemptyset(&mask_hup);
        sigfillset(&mask_all);
        sigaddset(&mask_three,SIGCHLD);
        sigaddset(&mask_three,SIGTSTP);
        sigaddset(&mask_three,SIGINT);
        sigaddset(&mask_hup,SIGHUP);
        
        sigprocmask(SIG_BLOCK,&mask_three,&prev);
        if((pid=fork())==0)
        {
            setpgid(0,0);
            sigprocmask(SIG_SETMASK,&prev,NULL);
            if(tok.builtins==BUILTIN_NOHUP)
            {
                sigprocmask(SIG_SETMASK,&mask_hup,NULL);
                execve(tok.argv[1],tok.argv,environ);
            }
            else{
                execve(tok.argv[0],tok.argv,environ);
            }
        }

        sigprocmask(SIG_BLOCK,&mask_all,NULL);
        if(bg==0){
            
            addjob(job_list,pid,FG,cmdline);
        while((pid=fgpid(job_list))){
            sigsuspend(&prev);}
        sigprocmask(SIG_SETMASK,&prev,NULL);
        }
        else {
            addjob(job_list,pid,BG,cmdline);
            sio_put("[%d] (%d) ",pid2jid(pid),pid);
            sio_put(cmdline);
            sio_put("\n");
            sigprocmask(SIG_SETMASK,&prev,NULL);
        }
    }

    initIO(sstdin,sstdout,pfilein,pfileout);




    return;
}

/* 
 * parseline - Parse the command line and build the argv array.
 * 
 * Parameters:
 *   cmdline:  The command line, in the form:
 *
 *                command [arguments...] [< infile] [> oufile] [&]
 *
 *   tok:      Pointer to a cmdline_tokens structure. The elements of this
 *             structure will be populated with the parsed tokens. Characters 
 *             enclosed in single or double quotes are treated as a single
 *             argument. 
 * Returns:
 *   1:        if the user has requested a BG job
 *   0:        if the user has requested a FG job  
 *  -1:        if cmdline is incorrectly formatted
 * 
 * Note:       The string elements of tok (e.g., argv[], infile, outfile) 
 *             are statically allocated inside parseline() and will be 
 *             overwritten the next time this function is invoked.
 */
int 
parseline(const char *cmdline, struct cmdline_tokens *tok) 
{

    static char array[MAXLINE];          /* holds local copy of command line */
    const char delims[10] = " \t\r\n";   /* argument delimiters (white-space) */
    char *buf = array;                   /* ptr that traverses command line */
    char *next;                          /* ptr to the end of the current arg */
    char *endbuf;                        /* ptr to end of cmdline string */
    int is_bg;                           /* background job? */

    int parsing_state;                   /* indicates if the next token is the
                                            input or output file */

    if (cmdline == NULL) {
        (void) fprintf(stderr, "Error: command line is NULL\n");
        return -1;
    }

    (void) strncpy(buf, cmdline, MAXLINE);
    endbuf = buf + strlen(buf);

    tok->infile = NULL;
    tok->outfile = NULL;

    /* Build the argv list */
    parsing_state = ST_NORMAL;
    tok->argc = 0;

    while (buf < endbuf) {
        /* Skip the white-spaces */
        buf += strspn (buf, delims);
        if (buf >= endbuf) break;

        /* Check for I/O redirection specifiers */
        if (*buf == '<') {
            if (tok->infile) {
                (void) fprintf(stderr, "Error: Ambiguous I/O redirection\n");
                return -1;
            }
            parsing_state |= ST_INFILE;
            buf++;
            continue;
        }
        if (*buf == '>') {
            if (tok->outfile) {
                (void) fprintf(stderr, "Error: Ambiguous I/O redirection\n");
                return -1;
            }
            parsing_state |= ST_OUTFILE;
            buf ++;
            continue;
        }

        if (*buf == '\'' || *buf == '\"') {
            /* Detect quoted tokens */
            buf++;
            next = strchr (buf, *(buf-1));
        } else {
            /* Find next delimiter */
            next = buf + strcspn (buf, delims);
        }
        
        if (next == NULL) {
            /* Returned by strchr(); this means that the closing
               quote was not found. */
            (void) fprintf (stderr, "Error: unmatched %c.\n", *(buf-1));
            return -1;
        }

        /* Terminate the token */
        *next = '\0';

        /* Record the token as either the next argument or the i/o file */
        switch (parsing_state) {
        case ST_NORMAL:
            tok->argv[tok->argc++] = buf;
            break;
        case ST_INFILE:
            tok->infile = buf;
            break;
        case ST_OUTFILE:
            tok->outfile = buf;
            break;
        default:
            (void) fprintf(stderr, "Error: Ambiguous I/O redirection\n");
            return -1;
        }
        parsing_state = ST_NORMAL;

        /* Check if argv is full */
        if (tok->argc >= MAXARGS-1) break;

        buf = next + 1;
    }

    if (parsing_state != ST_NORMAL) {
        (void) fprintf(stderr,
                       "Error: must provide file name for redirection\n");
        return -1;
    }

    /* The argument list must end with a NULL pointer */
    tok->argv[tok->argc] = NULL;

    if (tok->argc == 0)  /* ignore blank line */
        return 1;

    if (!strcmp(tok->argv[0], "quit")) {                 /* quit command */
        tok->builtins = BUILTIN_QUIT;
    } else if (!strcmp(tok->argv[0], "jobs")) {          /* jobs command */
        tok->builtins = BUILTIN_JOBS;
    } else if (!strcmp(tok->argv[0], "bg")) {            /* bg command */
        tok->builtins = BUILTIN_BG;
    } else if (!strcmp(tok->argv[0], "fg")) {            /* fg command */
        tok->builtins = BUILTIN_FG;
    } else if (!strcmp(tok->argv[0], "kill")) {          /* kill command */
        tok->builtins = BUILTIN_KILL;
    } else if (!strcmp(tok->argv[0], "nohup")) {            /* kill command */
        tok->builtins = BUILTIN_NOHUP;
    } else {
        tok->builtins = BUILTIN_NONE;
    }

    /* Should the job run in the background? */
    if ((is_bg = (*tok->argv[tok->argc-1] == '&')) != 0)
        tok->argv[--tok->argc] = NULL;

    return is_bg;
}


/*****************
 * Signal handlers
 *****************/

/* 
 * sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
 *     a child job terminates (becomes a zombie), or stops because it
 *     received a SIGSTOP, SIGTSTP, SIGTTIN or SIGTTOU signal. The 
 *     handler reaps all available zombie children, but doesn't wait 
 *     for any other currently running children to terminate.  
 */
void 
sigchld_handler(int sig) 
{
    int olderrno=errno;
    pid_t pid;
    int status;
    sigset_t mask,prev;
    sigfillset(&mask);
    while((pid=waitpid(-1,&status,WNOHANG | WUNTRACED | WCONTINUED))>0)
    {
        sigprocmask(SIG_BLOCK,&mask,&prev);
        if(WIFEXITED(status)){
            deletejob(job_list,pid);
            /*正常终止*/
        }
        else if(WIFSIGNALED(status))
        {
            /*被未捕获的信号中止*/
            sio_put("Job [%d] (%d) terminated by signal %d\n",pid2jid(pid),pid,WTERMSIG(status));
            deletejob(job_list,pid);
        }
        else if(WIFSTOPPED(status)){
            /*被信号暂停*/
            struct job_t* job_pointer=getjobpid(job_list,pid);
            job_pointer->state=ST;
            sio_put("Job [%d] (%d) stopped by signal %d\n",pid2jid(pid),pid,WSTOPSIG(status));
            
        }
        else if(WIFCONTINUED(status)){
            /*被继续信号重新启动*/
            struct job_t* job_pointer=getjobpid(job_list,pid);
            if(job_pointer->state==ST)
                job_pointer->state=BG;
            
        }
        sigprocmask(SIG_SETMASK,&prev,NULL);
    }
    errno=olderrno;
    return;
}

/* 
 * sigint_handler - The kernel sends a SIGINT to the shell whenver the
 *    user types ctrl-c at the keyboard.  Catch it and send it along
 *    to the foreground job.  
 */
void 
sigint_handler(int sig) 
{
    int olderrno=errno;
    pid_t pid;
    sigset_t mask,prev;
    sigfillset(&mask);
    sigprocmask(SIG_BLOCK,&mask,&prev);
    pid=fgpid(job_list);
    if(pid!=0){
        kill(-pid,sig);
        if(kill(-pid,SIGINT)!=0)
            unix_error("Error during kill!\n");
    }
    sigprocmask(SIG_SETMASK,&prev,NULL);
    errno=olderrno;
    return;
}

/*
 * sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
 *     the user types ctrl-z at the keyboard. Catch it and suspend the
 *     foreground job by sending it a SIGTSTP.  
 */
void 
sigtstp_handler(int sig) /*和上面sigint_handler的逻辑是相同的*/
{
    int olderrno=errno;
    pid_t pid;
    sigset_t mask,prev;
    sigfillset(&mask);
    sigprocmask(SIG_BLOCK,&mask,&prev);
    pid=fgpid(job_list);
    if(pid!=0){
        kill(-pid,sig);
        if(kill(-pid,SIGTSTP)!=0)
            unix_error("Error during stop!\n");}
    sigprocmask(SIG_SETMASK,&prev,NULL);
    errno=olderrno;
    return;

}

/*
 * sigquit_handler - The driver program can gracefully terminate the
 *    child shell by sending it a SIGQUIT signal.
 */
void 
sigquit_handler(int sig) 
{
    sio_error("Terminating after receipt of SIGQUIT signal\n");
}



/*********************
 * End signal handlers
 *********************/

/***********************************************
 * Helper routines that manipulate the job list
 **********************************************/

/* clearjob - Clear the entries in a job struct */
void 
clearjob(struct job_t *job) {
    job->pid = 0;
    job->jid = 0;
    job->state = UNDEF;
    job->cmdline[0] = '\0';
}

/* initjobs - Initialize the job list */
void 
initjobs(struct job_t *job_list) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
        clearjob(&job_list[i]);
}

/* maxjid - Returns largest allocated job ID */
int 
maxjid(struct job_t *job_list) 
{
    int i, max=0;

    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].jid > max)
            max = job_list[i].jid;
    return max;
}

/* addjob - Add a job to the job list */
int 
addjob(struct job_t *job_list, pid_t pid, int state, char *cmdline) 
{
    int i;

    if (pid < 1)
        return 0;

    for (i = 0; i < MAXJOBS; i++) {
        if (job_list[i].pid == 0) {
            job_list[i].pid = pid;
            job_list[i].state = state;
            job_list[i].jid = nextjid++;
            if (nextjid > MAXJOBS)
                nextjid = 1;
            strcpy(job_list[i].cmdline, cmdline);
            if(verbose){
                printf("Added job [%d] %d %s\n",
                       job_list[i].jid,
                       job_list[i].pid,
                       job_list[i].cmdline);
            }
            return 1;
        }
    }
    printf("Tried to create too many jobs\n");
    return 0;
}

/* deletejob - Delete a job whose PID=pid from the job list */
int 
deletejob(struct job_t *job_list, pid_t pid) 
{
    int i;

    if (pid < 1)
        return 0;

    for (i = 0; i < MAXJOBS; i++) {
        if (job_list[i].pid == pid) {
            clearjob(&job_list[i]);
            nextjid = maxjid(job_list)+1;
            return 1;
        }
    }
    return 0;
}

/* fgpid - Return PID of current foreground job, 0 if no such job */
pid_t 
fgpid(struct job_t *job_list) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].state == FG)
            return job_list[i].pid;
    return 0;
}

/* getjobpid  - Find a job (by PID) on the job list */
struct job_t 
*getjobpid(struct job_t *job_list, pid_t pid) {
    int i;

    if (pid < 1)
        return NULL;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].pid == pid)
            return &job_list[i];
    return NULL;
}

/* getjobjid  - Find a job (by JID) on the job list */
struct job_t *getjobjid(struct job_t *job_list, int jid) 
{
    int i;

    if (jid < 1)
        return NULL;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].jid == jid)
            return &job_list[i];
    return NULL;
}

/* pid2jid - Map process ID to job ID */
int 
pid2jid(pid_t pid) 
{
    int i;

    if (pid < 1)
        return 0;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].pid == pid) {
            return job_list[i].jid;
        }
    return 0;
}

/* listjobs - Print the job list */
void 
listjobs(struct job_t *job_list, int output_fd) 
{
    int i;
    char buf[MAXLINE << 2];

    for (i = 0; i < MAXJOBS; i++) {
        memset(buf, '\0', MAXLINE);
        if (job_list[i].pid != 0) {
            sprintf(buf, "[%d] (%d) ", job_list[i].jid, job_list[i].pid);
            if(write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
            memset(buf, '\0', MAXLINE);
            switch (job_list[i].state) {
            case BG:
                sprintf(buf, "Running    ");
                break;
            case FG:
                sprintf(buf, "Foreground ");
                break;
            case ST:
                sprintf(buf, "Stopped    ");
                break;
            default:
                sprintf(buf, "listjobs: Internal error: job[%d].state=%d ",
                        i, job_list[i].state);
            }
            if(write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
            memset(buf, '\0', MAXLINE);
            sprintf(buf, "%s\n", job_list[i].cmdline);
            if(write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
        }
    }
}
/******************************
 * end job list helper routines
 ******************************/


/***********************
 * Other helper routines
 ***********************/

/*
 * usage - print a help message
 */
void 
usage(void) 
{
    printf("Usage: shell [-hvp]\n");
    printf("   -h   print this message\n");
    printf("   -v   print additional diagnostic information\n");
    printf("   -p   do not emit a command prompt\n");
    exit(1);
}

/*
 * unix_error - unix-style error routine
 */
void 
unix_error(char *msg)
{
    fprintf(stdout, "%s: %s\n", msg, strerror(errno));
    exit(1);
}

/*
 * app_error - application-style error routine
 */
void 
app_error(char *msg)
{
    fprintf(stdout, "%s\n", msg);
    exit(1);
}

/* Private sio_functions */
/* sio_reverse - Reverse a string (from K&R) */
static void sio_reverse(char s[])
{
    int c, i, j;

    for (i = 0, j = strlen(s)-1; i < j; i++, j--) {
        c = s[i];
        s[i] = s[j];
        s[j] = c;
    }
}

/* sio_ltoa - Convert long to base b string (from K&R) */
static void sio_ltoa(long v, char s[], int b) 
{
    int c, i = 0;
    
    do {  
        s[i++] = ((c = (v % b)) < 10)  ?  c + '0' : c - 10 + 'a';
    } while ((v /= b) > 0);
    s[i] = '\0';
    sio_reverse(s);
}

/* sio_strlen - Return length of string (from K&R) */
static size_t sio_strlen(const char s[])
{
    int i = 0;

    while (s[i] != '\0')
        ++i;
    return i;
}

/* sio_copy - Copy len chars from fmt to s (by Ding Rui) */
void sio_copy(char *s, const char *fmt, size_t len)
{
    if(!len)
        return;

    for(size_t i = 0;i < len;i++)
        s[i] = fmt[i];
}

/* Public Sio functions */
ssize_t sio_puts(char s[]) /* Put string */
{
    return write(STDOUT_FILENO, s, sio_strlen(s));
}

ssize_t sio_putl(long v) /* Put long */
{
    char s[128];
    
    sio_ltoa(v, s, 10); /* Based on K&R itoa() */ 
    return sio_puts(s);
}

ssize_t sio_put(const char *fmt, ...) // Put to the console. only understands %d
{
  va_list ap;
  char str[MAXLINE]; // formatted string
  char arg[128];
  const char *mess = "sio_put: Line too long!\n";
  int i = 0, j = 0;
  int sp = 0;
  int v;

  if (fmt == 0)
    return -1;

  va_start(ap, fmt);
  while(fmt[j]){
    if(fmt[j] != '%'){
        j++;
        continue;
    }

    sio_copy(str + sp, fmt + i, j - i);
    sp += j - i;

    switch(fmt[j + 1]){
    case 0:
    		va_end(ap);
        if(sp >= MAXLINE){
            write(STDOUT_FILENO, mess, sio_strlen(mess));
            return -1;
        }
        
        str[sp] = 0;
        return write(STDOUT_FILENO, str, sp);

    case 'd':
        v = va_arg(ap, int);
        sio_ltoa(v, arg, 10);
        sio_copy(str + sp, arg, sio_strlen(arg));
        sp += sio_strlen(arg);
        i = j + 2;
        j = i;
        break;

    case '%':
        sio_copy(str + sp, "%", 1);
        sp += 1;
        i = j + 2;
        j = i;
        break;

    default:
        sio_copy(str + sp, fmt + j, 2);
        sp += 2;
        i = j + 2;
        j = i;
        break;
    }
  } // end while

  sio_copy(str + sp, fmt + i, j - i);
  sp += j - i;

	va_end(ap);
  if(sp >= MAXLINE){
    write(STDOUT_FILENO, mess, sio_strlen(mess));
    return -1;
  }
  
  str[sp] = 0;
  return write(STDOUT_FILENO, str, sp);
}

void sio_error(char s[]) /* Put error message and exit */
{
    sio_puts(s);
    _exit(1);
}

/*
 * Signal - wrapper for the sigaction function
 */
handler_t 
*Signal(int signum, handler_t *handler) 
{
    struct sigaction action, old_action;

    action.sa_handler = handler;  
    sigemptyset(&action.sa_mask); /* block sigs of type being handled */
    action.sa_flags = SA_RESTART; /* restart syscalls if possible */

    if (sigaction(signum, &action, &old_action) < 0)
        unix_error("Signal error");
    return (old_action.sa_handler);
}


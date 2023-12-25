/*
* name : Boyuan Chen
* ID:2200017816
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    if(M==32){//32*32
        //首先考虑到8*8分块技术，来减少B的不命中，否则按照元素读的话，B总是不命中
        //而后再考虑用8个自由变量正好储存1 line的cache，一次读完一行
        int i=0,j=0,k=0,v1,v2,v3,v4,v5,v6,v7,v8;
        for(i=0;i<32;i+=8){
            for(j=0;j<32;j+=8){
                for(k=i;k<i+8;++k){
                    v1=A[k][j];
                    v2=A[k][j+1];
                    v3=A[k][j+2];
                    v4=A[k][j+3];
                    v5=A[k][j+4];
                    v6=A[k][j+5];
                    v7=A[k][j+6];
                    v8=A[k][j+7];
                    B[j][k]=v1;
                    B[j+1][k]=v2;
                    B[j+2][k]=v3;
                    B[j+3][k]=v4;
                    B[j+4][k]=v5;
                    B[j+5][k]=v6;
                    B[j+6][k]=v7;
                    B[j+7][k]=v8;
                }
            }
        }
    }
    else if(M==64){//64*64
        int i=0,j=0,k=0,v1,v2,v3,v4,v5,v6,v7,v8;
        //首先考虑Cache中只能放4行A中的行，如果再用8×8的块，前面4行可以填入，后面4行会在Cache中发生冲突，导致miss次数增加
        //于是一开始采用4*4分块+辅助4个自由变量，miss 1700仍是较高
        //后来基于的主要思路是,可以在B内部做变换达到转置的效果，以下将进一步讲解
        for(i=0;i<64;i+=8){
            for(j=0;j<64;j+=8){
                for(k=0;k<4;++k){
                    //先把A的上半部分存入B
                    v1=A[i+k][j];
                    v2=A[i+k][j+1];
                    v3=A[i+k][j+2];
                    v4=A[i+k][j+3];
                    v5=A[i+k][j+4];
                    v6=A[i+k][j+5];
                    v7=A[i+k][j+6];
                    v8=A[i+k][j+7];

                    B[j][i+k]=v1;
                    B[j+1][k+i]=v2;
                    B[j+2][k+i]=v3;
                    B[j+3][k+i]=v4;
                    //这部分是后续还要在B内部进行移动调整的
                    B[j][k+i+4]=v5;
                    B[j+1][k+i+4]=v6;
                    B[j+2][k+i+4]=v7;
                    B[j+3][k+i+4]=v8;
                }
                for(k=0;k<4;++k){
                    v1=B[j+k][i+4];
                    v2=B[j+k][i+5];
                    v3=B[j+k][i+6];
                    v4=B[j+k][i+7];
                    //再用剩下的变量取A
                    v5=A[i+4][k+j];
                    v6=A[i+5][k+j];
                    v7=A[i+6][k+j];
                    v8=A[i+7][k+j];
                    //进行内部操作转换
                    B[j+k][i+4]=v5;
                    B[j+k][i+5]=v6;
                    B[k+j][i+6]=v7;
                    B[k+j][i+7]=v8;
                    //B的内部进行转置交换
                    B[j+k+4][i]=v1;
                    B[j+k+4][i+1]=v2;
                    B[j+k+4][i+2]=v3;
                    B[j+k+4][i+3]=v4;
                }
                //此时只剩下右下部分了
                for(k=4;k<8;++k){
                    for(int m=4;m<8;++m){
                        B[j+m][i+k]=A[i+k][j+m];
                    }
                }
            }
        }
    }
    else{/*1642的做法*/
    //循环顺序不一样,对应的结果也不一样
               int i=0,j=0,k=0,v1,v2,v3,v4,v5,v6,v7,v8;
        for(j=0;j<M;j+=8){
            for(i=0;i<N;i+=8){
                if(M-j>=8&&N-i>=8){//拆成8*8大块 这部分思路和上面64 64情况一致
                for(k=0;k<4;++k){
                    //先把A的上半部分存入B
                    v1=A[i+k][j];
                    v2=A[i+k][j+1];
                    v3=A[i+k][j+2];
                    v4=A[i+k][j+3];
                    v5=A[i+k][j+4];
                    v6=A[i+k][j+5];
                    v7=A[i+k][j+6];
                    v8=A[i+k][j+7];

                    B[j][i+k]=v1;
                    B[j+1][k+i]=v2;
                    B[j+2][k+i]=v3;
                    B[j+3][k+i]=v4;
                    //这部分是后续还要在B内部进行移动调整的
                    B[j][k+i+4]=v5;
                    B[j+1][k+i+4]=v6;
                    B[j+2][k+i+4]=v7;
                    B[j+3][k+i+4]=v8;
                }
                for(k=0;k<4;++k){
  
                    //再用剩下的变量取A
                    v5=A[i+4][k+j];
                    v6=A[i+5][k+j];
                    v7=A[i+6][k+j];
                    v8=A[i+7][k+j];
                    //这里的读顺序也会影响到miss
                    v1=B[j+k][i+4];
                    v2=B[j+k][i+5];
                    v3=B[j+k][i+6];
                    v4=B[j+k][i+7];
                    //进行内部操作转换
                    B[j+k][i+4]=v5;
                    B[j+k][i+5]=v6;
                    B[k+j][i+6]=v7;
                    B[k+j][i+7]=v8;
                    //B的内部进行转置交换
                    B[j+k+4][i]=v1;
                    B[j+k+4][i+1]=v2;
                    B[j+k+4][i+2]=v3;
                    B[j+k+4][i+3]=v4;
                }
                //此时只剩下右下部分了
                for(k=4;k<8;++k){
                    for(int m=4;m<8;++m){
                        B[j+m][i+k]=A[i+k][j+m];
                    }
                }
            }
            else{//对边界部分，分情况讨论处理
                for(k=i;k<i+8&&k<N;++k){
                    if(M-j>=8){
                        v8=A[k][j+7];v7=A[k][j+6];
                        v6=A[k][j+5];v5=A[k][j+4];
                    }
                    v4=A[k][j+3];v3=A[k][j+2];
                    v2=A[k][j+1];v1=A[k][j];
                    if(M-j>=8){
                        B[j+7][k]=v8;B[j+6][k]=v7;
                        B[j+5][k]=v6;B[j+4][k]=v5;
                    }
                    B[j+3][k]=v4;B[j+2][k]=v3;
                    B[j+1][k]=v2;B[j][k]=v1;
                }

            }
            }

        }
    }
    //else{//60*68? 这咋储存
/*1741的做法
    else{
        int i=0,j=0,k=0;
        //一开始尝试分块，发现分块到12*12有局部最小值1741(尝试了4,5,6,……,16分块)
        int temp=12;int va1;
        for(i=0;i<N;i+=temp){
            for(j=0;j<M;j+=temp){
                for(k=i;k<i+temp&&k<N;++k){
                    for(int m=j;m<j+temp&&m<M;++m){
                        va1=A[k][m];
                        B[m][k]=va1;
                    }
                }
            }
        }
    }*/
/*
    else{//1723的做法
                //首先考虑到8*8分块技术，来减少B的不命中，否则按照元素读的话，B总是不命中
        //而后再考虑用8个自由变量正好储存1 line的cache，一次读完一行
        int i=0,j=0,k=0,v1,v2,v3,v4,v5,v6,v7,v8;
        for(i=0;i<N;i+=8){
            for(j=0;j<M;j+=8){
                for(k=i;k<i+8&&k<N;++k){
                    v1=A[k][j];
                    v2=A[k][j+1];
                    v3=A[k][j+2];
                    v4=A[k][j+3];
                    v5=A[k][j+4];
                    v6=A[k][j+5];
                    v7=A[k][j+6];
                    v8=A[k][j+7];
                    B[j][k]=v1;
                    B[j+1][k]=v2;
                    B[j+2][k]=v3;
                    B[j+3][k]=v4;
                    B[j+4][k]=v5;
                    B[j+5][k]=v6;
                    B[j+6][k]=v7;
                    B[j+7][k]=v8;
                }
            }
        }
    }*/
    

    ENSURES(is_transpose(M, N, A, B));
}
/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

 /*
  * trans - A simple baseline transpose function, not optimized for the cache.
  */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);

}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}


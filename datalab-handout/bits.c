/* 
 * CS:APP Data Lab 
 * 
 * <Name: Boyuan Chen ; UserID: u2200017816>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2022 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
/* 
 * bitXnor - ~(x^y) using only ~ and | 
 *   Example: bitXnor(6, -5) = 2
 *   Legal ops: ~ |
 *   Max ops: 7
 *   Rating: 1
 */
int bitXnor(int x, int y) {
  return (~(x|y)|~(~x|~y));
}
/* 
 * bitConditional - x ? y : z for each bit respectively
 *   Example: bitConditional(0b00110011, 0b01010101, 0b00001111) = 0b00011101
 *   Legal ops: & | ^ ~
 *   Max ops: 4
 *   Rating: 1
 */
int bitConditional(int x, int y, int z) {
  return (y & x) | (z & ~x);
}
/* 
 * byteSwap - swaps the nth byte and the mth byte
 *  Examples: byteSwap(0x12345678, 1, 3) = 0x56341278
 *            byteSwap(0xDEADBEEF, 0, 2) = 0xDEEFBEAD
 *  You may assume that 0 <= n <= 3, 0 <= m <= 3
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 16
 *  Rating: 2
 */
int byteSwap(int x, int n, int m) {
  //以字节为单位转化,一个字节是8位
  //可以通过命名重复变量来减少运算符使用次数
   int shift_n=n<<3;
  int shift_m=m<<3;//2
  int mask=(0xff<<(shift_n)) | (0xff<<(shift_m));//3
  //printf("%x",mask);
  int a=(((x>>(shift_n))&0xff)<<(shift_m));//3
  int b=(((x>>(shift_m))&0xff)<<(shift_n));//3
  x&=~mask;//在这里x已经被改变了//2
  return x | a | b;//2
}
/* 
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int logicalShift(int x, int n) {
  //偏移量就是n;
  //int temp=x>>n;//先移动n位
  //然后造一个掩码出来,可以使得最高位数都设置为0
  //int mask=~(1<<31>>n<<1)
  return (x>>n) &(~(1<<31>>n<<1));
}
/* 
 * cleanConsecutive1 - change any consecutive 1 to zeros in the binary form of x.
 *   Consecutive 1 means a set of 1 that contains more than one 1.
 *   Examples cleanConsecutive1(0x10) = 0x10
 *            cleanConsecutive1(0xF0) = 0x0
 *            cleanConsecutive1(0xFFFF0001) = 0x1
 *            cleanConsecutive1(0x4F4F4F4F) = 0x40404040
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 4
 */
int cleanConsecutive1(int x){
  //将连续的1变为0
  int ones=x&(x<<1);//detect consecutive 1;
  int mask=(ones>>1)|ones;
    return x&(~mask);
}
/*
 * leftBitCount - returns count of number of consective 1's in
 *     left-hand (most significant) end of word.
 *   Examples: leftBitCount(-1) = 32, leftBitCount(0xFFF0F0F0) = 12
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 50
 *   Rating: 4
 */
int leftBitCount(int x) {
  //左侧连续个1的计数
  //最多32位
  int pointer=0;int res=0;int sign=0;
  sign=1&(!(~x));//单独考虑全1的情况
  //printf("sign: %d\n",sign);
  //count 类似于指示指针的位置
  pointer+=(!!(~(x>>(pointer+16))))<<4;
  pointer+=(!!(~(x>>(pointer+8))))<<3;
  pointer+=(!!(~(x>>(pointer+4))))<<2;
  pointer+=(!!(~(x>>(pointer+2))))<<1;
  pointer+=(!!(~(x>>(pointer+1))));
  res=32+~pointer+sign;
  return res;
}
/* 
 * counter1To5 - return 1 + x if x < 5, return 1 otherwise, we ensure that 1<=x<=5
 *   Examples counter1To5(2) = 3,  counter1To5(5) = 1
 *   Legal ops: ~ & ! | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int counter1To5(int x) {
  //-x的表示是~x+1;
  int sign=(x+(~5+1))>>31;//获取符号位
  //printf("%d",sign&x+1);
  //printf("%d",sign&x);sign&x是什么类型？
  int a=sign&x;
  return a+1;
}
/* 
 * sameSign - return 1 if x and y have same sign, and 0 otherwise
 *   Examples sameSign(0x12345678, 0) = 1, sameSign(0xFFFFFFFF,0x1) = 0
 *   Legal ops: ! ~ & ! ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int sameSign(int x, int y) {
  int sign_x=(x>>31);
  int sign_y=(y>>31);
  return (~(sign_x^sign_y))&1;
}
/*
 * satMul3 - multiplies by 3, saturating to Tmin or Tmax if overflow
 *  Examples: satMul3(0x10000000) = 0x30000000
 *            satMul3(0x30000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0x70000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0xD0000000) = 0x80000000 (Saturate to TMin)
 *            satMul3(0xA0000000) = 0x80000000 (Saturate to TMin)
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 3
 */
int satMul3(int x) {
    int mul3=(x<<1)+x;
    int sign=x>>31;
    int mul2=x<<1;//分别考虑*2和*3是否溢出
    int tmin=1<<31;
    int tmax=~tmin;
    int overflow=((x>>31)^(mul3>>31))|((x>>31)^(mul2>>31));//因为是右移，有一个overflow了，全overflow
    int res=(overflow&((sign)^tmax)) | (~overflow & mul3);
    return res;


}
/* 
 * isGreater - if x > y  then return 1, else return 0 
 *   Example: isGreater(4,5) = 0, isGreater(5,4) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isGreater(int x, int y) {
  //要分正负讨论
  int sign_x=(x>>31);//转化逻辑运算符w，1是负，0是正
  int sign_y=(y>>31);
  int diff_sign=(sign_x)&(!sign_y);//返回0 
  int equal_sign=(!(sign_x^sign_y))&((x+(~y))>>31);//大于+同号，返回0
  return !(equal_sign | diff_sign);
}
/* 
 * subOK - Determine if can compute x-y without overflow
 *   Example: subOK(0x80000000,0x80000000) = 1,
 *            subOK(0x80000000,0x70000000) = 0, 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int subOK(int x, int y) {
  //通过符号位是否发生变化来判断是否发生了溢出
  int sign1=x^y;//被减数和减数符号不同
  int sign2=(x+(~y)+1)^x;//被减数和减数也符号不同 溢出了
  return !((sign1&sign2)>>31);
}
/*
 * trueFiveEighths - multiplies by 5/8 rounding toward 0,
 *  avoiding errors due to overflow
 *  Examples: trueFiveEighths(11) = 6
 *            trueFiveEighths(-9) = -5
 *            trueFiveEighths(0x30000000) = 0x1E000000 (no overflow)
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 4
 */
int trueFiveEighths(int x){
  //要进行溢出判断！！
  //(x>>3)+(x>>1)容易舍入两次
  int  temp1= x >> 3;
  int re = x & 7;
  int ans1=temp1+(temp1<<2);
  re+=(re<<2);
  return ans1 + (re + (x >> 31 & 7) >> 3);
}
/* 
 * float_half - Return bit-level equivalent of expression 0.5*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_half(unsigned uf) {
  int round,exp,s,masks,maskf,maske;
  round=!((uf&3)^3);//提取后两位判断是否需要进位
  masks=0x80000000;//符号位
  maske=0x7f800000;//指数位
  maskf=0x007fffff;//尾数位
  exp=uf&maske;//提取指数位
  s=uf&masks;//提取符号位
  if(exp==0x7f800000)return uf;
  if(exp==0x00800000){//特殊的1-
    return s|(round+((uf&(0x7fffffff))>>1));//提取指数位+frac位直接右移+判断进位
  }
  if(exp==0x00000000){//denormalized
    return s | (round+((uf&maskf)>>1));
  }
  return (((exp>>23)-1)<<23) | (uf&(0x807fffff));//normalize的情况，指数位直接右移
  
}
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
  int sign=x&0x80000000;int digit=0;int count=0xffffffff;int frac=0;int exp=0;
  int temp1=0;int temp2=0;int tempf=0;
  if(x==0x80000000)return 0xcf000000;
  if(x==0)return 0;
  if(sign)x=-x;
  x&=0x7fffffff;//去除符号位
  //提取位数
  digit=x;
  while(digit){//提取总位数
    digit=digit>>1;count++;
  }
  x-=(0x1<<count);//因为本来就是1.xxx
  if(count<24){frac=x<<(23-count);}
  else{
    tempf=x>>(count-23);
    temp2=0x1<<(count-24);
    temp1=x&((temp2<<1)-1);
    if(temp1<temp2){
      frac=tempf;
    }
    else{
      if(tempf==0x7fffff){frac=0;count++;}
      else{
        if(temp1==temp2)frac=(tempf&0x1)+tempf;
        else{frac=tempf+1;}
      }
    }

  }
  exp=(127+count)<<23;
  return sign | exp | frac;

}
/* 
 * float64_f2i - Return bit-level equivalent of expression (int) f
 *   for 64 bit floating point argument f.
 *   Argument is passed as two unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   double-precision floating point value.
 *   Notice: uf1 contains the lower part of the f64 f
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 20
 *   Rating: 4
 */
int float64_f2i(unsigned uf1, unsigned uf2) {
  //uf1负责低位的f64的值
  
  unsigned sign=uf2>>31;
  unsigned frac=0;
  unsigned exp=(uf2>>20)&0x7ff;
  //先右移20位，剩12位取后11位作为新数的exp
  unsigned frac1=uf2&0xfffff;//取后20位作为新数的前半部分尾数
  int E=exp-1023;//计算数量级

  if(E>31){//exp=(1<<11)-1;E>30;
    return 0x80000000u;
  }//边界√
  if(exp<1023)return 0;//边界√

  frac=0x80000000u | (uf1>>21) | (frac1<<11);
  frac=frac>>(31-E);
  if(sign){
    return frac>0x80000000u?0x80000000u:-frac;
  }
  return frac>0x7fffffff?0x80000000u:frac;
}
/* 
 * float_negpwr2 - Return bit-level equivalent of the expression 2.0^-x
 *   (2.0 raised to the power -x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^-x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 * 
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while 
 *   Max ops: 20 
 *   Rating: 4
 */
unsigned float_negpwr2(int x) {
  //bias=127;
  //借用IEEE的表示
  //对于normalized的数exp[-126,127];
  //-x=~x+1
  if(x<=126&&x>=-127)return (127+(~x)+1)<<23;
  if(x<-127)return (0xff<<23);//-x很大，超出表示范围
  //denormalized数
  //frac都是0,先把这个frac跳过
  if(x>126&&x<=149)return 1<<(127+(~x)+23);
  return 0;
}

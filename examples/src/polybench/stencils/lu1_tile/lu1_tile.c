#include <math.h>
#define ceild(n,d)  ceil(((double)(n))/((double)(d)))
#define floord(n,d) floor(((double)(n))/((double)(d)))
#define max(x,y)    ((x) > (y)? (x) : (y))
#define min(x,y)    ((x) < (y)? (x) : (y))

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <sys/time.h>

/* presage specific headers */
#include "Utility.h"
#include "PresageRT.h"

double t_start, t_end ;

extern long dim0;
extern long dim1;
extern long dim2;
extern int dimcount;
extern int psgdim[];
extern long long detectCounter;

#ifdef INST
extern int printFaultSitesData(void);
extern int printFaultInjectionData(void);
#endif

/* Array Initialization */
static 
void init_array( double *a )
{
	int i,j,k ;
	for (i=0; i<64; i++)
	{
		for (j=0; j<64; j++)
		{
			for (k=0; k<64; k++)
			{
				a[i*64 + j] += (i+k+1)*(k+j+1);
			}
		}
	}
}


static 
void func( double *a )
{
	int i,j,k;
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
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
   <http://www.gnu.org/licenses/>.  */
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
/* wchar_t uses Unicode 8.0.0.  Version 8.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2014, plus Amendment 1 (published
   2015-05-15).  */
/* We do not support C11 <threads.h>.  */
  int t1, t2, t3, t4, t5, t6;
 register int lbv, ubv;
/* Start of CLooG code */
for (t1=0;t1<=1;t1++) {
  for (t2=63*t1;t2<=min(122,31*t1+92);t2++) {
    for (t3=max(max(ceild(-930*t1+488*t2-930,473),ceild(952*t2-1800,937)),63*t1+1);t3<=min(floord(-31*t1+32*t2+60,31),t2+3);t3++) {
      if ((t1 == 0) && (t2 <= floord(31*t3+61,32)) && (t2 >= t3-1)) {
        for (t4=max(0,ceild(32*t2-1985,31));t4<=min(31,floord(16*t2-32,31));t4++) {
          for (t5=32*t2;t5<=min(min(32*t2+31,31*t3+61),31*t4+1985);t5++) {
            for (t6=max(ceild(32*t5-993,31),32*t3);t6<=min(floord(-31*t4+32*t5+929,31),32*t3+31);t6++) {
              if ((t5+30)%31 == 0) {
                a[((-31*t4+t5-32)/31)*64 + ((31*t4-32*t5+31*t6+1024)/31)] = a[((-31*t4+t5-32)/31)*64 + ((31*t4-32*t5+31*t6+1024)/31)] - a[((-31*t4+t5-32)/31)*64 + t4]*a[t4*64 + ((31*t4-32*t5+31*t6+1024)/31)];;
              }
            }
          }
        }
      }
      if (t2 <= t3-2) {
        for (t4=max(max(ceild(32*t2-1985,31),ceild(32*t3-2079,31)),32*t1);t4<=min(min(min(floord(t3-1,2),floord(16*t2-16,31)),floord(1024*t2-992*t3+1921,31)),32*t1+31);t4++) {
          for (t5=max(max(ceild(992*t3+31*t4-929,32),32*t2),62*t4+63);t5<=min(min(32*t2+31,31*t3+61),31*t4+1985);t5++) {
            for (t6=max(ceild(32*t5-993,31),32*t3);t6<=min(floord(-31*t4+32*t5+929,31),32*t3+31);t6++) {
              if ((t5+30)%31 == 0) {
                a[((-31*t4+t5-32)/31)*64 + ((31*t4-32*t5+31*t6+1024)/31)] = a[((-31*t4+t5-32)/31)*64 + ((31*t4-32*t5+31*t6+1024)/31)] - a[((-31*t4+t5-32)/31)*64 + t4]*a[t4*64 + ((31*t4-32*t5+31*t6+1024)/31)];;
              }
            }
          }
        }
      }
      if ((t1 == 0) && (t2 == t3-1) && (t2 <= 30)) {
        if (t2%2 == 0) {
          for (t5=32*t2+1;t5<=32*t2+31;t5++) {
            a[(t2/2)*64 + (-31*t2+t5)] = a[(t2/2)*64 + (-31*t2+t5)]/a[(t2/2)*64 + (t2/2)];;
          }
        }
      }
      if ((t1 == 0) && (t2 <= 31) && (t2 == t3)) {
        if ((t2+1)%2 == 0) {
          a[((t2-1)/2)*64 + (t2+31)] = a[((t2-1)/2)*64 + (t2+31)]/a[((t2-1)/2)*64 + ((t2-1)/2)];;
          for (t6=32*t2+1;t6<=32*t2+31;t6++) {
            a[((t2+1)/2)*64 + ((-63*t2+2*t6-1)/2)] = a[((t2+1)/2)*64 + ((-63*t2+2*t6-1)/2)] - a[((t2+1)/2)*64 + ((t2-1)/2)]*a[((t2-1)/2)*64 + ((-63*t2+2*t6-1)/2)];;
          }
        }
      }
      if ((t1 == 0) && (t2 == 62) && (t3 == 63)) {
        a[31*64 + 63] = a[31*64 + 63]/a[31*64 + 31];;
        for (t6=2017;t6<=2047;t6++) {
          a[32*64 + (t6-1985)] = a[32*64 + (t6-1985)] - a[32*64 + 31]*a[31*64 + (t6-1985)];;
        }
      }
      if ((t1 == 0) && (t2 == 31) && (t3 == 32)) {
        a[16*64 + 47] = a[16*64 + 47] - a[16*64 + 15]*a[15*64 + 47];;
        a[15*64 + 63] = a[15*64 + 63]/a[15*64 + 15];;
        for (t6=1025;t6<=1040;t6++) {
          a[16*64 + (t6-977)] = a[16*64 + (t6-977)] - a[16*64 + 15]*a[15*64 + (t6-977)];;
        }
      }
      if ((t1 == 0) && (t2 == t3-1)) {
        for (t4=ceild(16*t2-30,31);t4<=min(30,floord(16*t2-16,31));t4++) {
          for (t5=32*t2+1;t5<=62*t4+62;t5++) {
            a[t4*64 + (-62*t4+t5)] = a[t4*64 + (-62*t4+t5)]/a[t4*64 + t4];;
          }
          for (t6=max(32*t2+32,64*t4+33);t6<=62*t4+93;t6++) {
            a[(t4+1)*64 + (-63*t4+t6-32)] = a[(t4+1)*64 + (-63*t4+t6-32)] - a[(t4+1)*64 + t4]*a[t4*64 + (-63*t4+t6-32)];;
          }
          a[(t4+1)*64 + (-t4+62)] = a[(t4+1)*64 + (-t4+62)] - a[(t4+1)*64 + t4]*a[t4*64 + (-t4+62)];;
          a[t4*64 + 63] = a[t4*64 + 63]/a[t4*64 + t4];;
          for (t6=62*t4+95;t6<=min(32*t2+63,63*t4+95);t6++) {
            a[(t4+1)*64 + (-63*t4+t6-32)] = a[(t4+1)*64 + (-63*t4+t6-32)] - a[(t4+1)*64 + t4]*a[t4*64 + (-63*t4+t6-32)];;
          }
        }
      }
      if ((t2 <= t3) && (t2 >= t3-1)) {
        for (t4=max(ceild(t3,2),ceild(16*t2-31,31));t4<=min(min(floord(32*t2+30,63),floord(32*t3-1,63)),32*t1+31);t4++) {
          for (t5=max(max(32*t2,32*t3-31),63*t4+1);t5<=min(min(32*t3,32*t2+31),62*t4+63);t5++) {
            a[t4*64 + (-62*t4+t5)] = a[t4*64 + (-62*t4+t5)]/a[t4*64 + t4];;
          }
        }
      }
    }
  }
}
/* End of CLooG code */
}

int main(int argc, char** argv)
{
	if(argc < 3)
	{
		printf("\nInfo: Insufficient arguments!\n\n");
	}

	double *a = (double*)malloc(64*64*sizeof(double));
	psgProtect(a, (long long) &a[0], (long long) &a[64-1]);

	/* Initialize array */
	init_array(a);

	func(a);

	if(argc==4)
	{
		print_data_2d(64,64,a,argv[3],1);
	}

	if(detectCounter)
		printf("\nInfo: Soft error detected\n");
	else
		printf("\nInfo: No Soft Errors detected\n");

	free(a);

	#ifdef INST
		printFaultSitesData();
		printFaultInjectionData();
	#endif
	
}

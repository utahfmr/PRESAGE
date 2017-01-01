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

/*Benchmark specific header*/
#include "util.h"



double t_start, t_end;

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

/* Array initialization */
static
void init_array( int n, double *a )
{
	int i,j ;
	for (j=0; j<n; j++) {
		a[j] = ((double)j)/n ;
	}
}

static 
void func(int n, double *a, double *b)
{
	int t,i,j ;
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
  int t1, t2, t3;
 register int lbv, ubv;
/* Start of CLooG code */
if (n >= 4) {
  if (n >= 5) {
    for (t1=0;t1<=n-1;t1++) {
      b[2] = 0.33333 * (a[2 -1] + a[2] + a[2 + 1]);;
      for (t2=2*t1+3;t2<=2*t1+n-2;t2++) {
        b[(-2*t1+t2)] = 0.33333 * (a[(-2*t1+t2)-1] + a[(-2*t1+t2)] + a[(-2*t1+t2) + 1]);;
        a[(-2*t1+t2-1)] = b[(-2*t1+t2-1)];;
      }
      a[(n-2)] = b[(n-2)];;
    }
  }
  if (n == 4) {
    for (t1=0;t1<=3;t1++) {
      b[2] = 0.33333 * (a[2 -1] + a[2] + a[2 + 1]);;
      a[2] = b[2];;
    }
  }
}
/* End of CLooG code */
}

int main(int argc, char** argv)
{
   if(argc<3) {
		printf("\nInfo: Insufficient arguments!\n\n");
	}

	int n = atoi(argv[1]);
	int tsteps = atoi(argv[2]);
	
	dimcount=1;
	psgdim[0]=n;
	dim0=n;

	double *a = (double*)malloc(n*sizeof(double));
	double *b = (double*)malloc(n*sizeof(double));

	psgProtect(a, (long long) &a[0], (long long) &a[n-1]);
	psgProtect(b, (long long) &b[0], (long long) &b[n-1]);

	/* Initialize array */
	init_array(n,a);
	init_array(n,b);

	//gettimeofday(&start, NULL);
	func(n, a, b);
	//gettimeofday(&end, NULL);
	
	if(argc==4) {
		print_data_1d(n,a,argv[3],1);
		print_data_1d(n,b,argv[3],0);
	}

	if(detectCounter)
		printf("\nInfo: Soft error detected\n");
	else
		printf("\nInfo: No Soft Errors detected\n");

	free(a);
	free(b);

	#ifdef INST
		printFaultSitesData();
		printFaultInjectionData();
	#endif
	return 0 ;
}

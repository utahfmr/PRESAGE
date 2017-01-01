#include <math.h>


/* presage specific headers */
#include "Utility.h"
#include "PresageRT.h"


#define ceild(n,d)  ceil(((double)(n))/((double)(d)))
#define floord(n,d) floor(((double)(n))/((double)(d)))
#define max(x,y)    ((x) > (y)? (x) : (y))
#define min(x,y)    ((x) < (y)? (x) : (y))

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "util.h"

#define N 2000000
#define T 1000

#pragma declarations
double a[N];
double b[N];
#pragma enddeclarations

double t_start, t_end;


extern long long dim0;
extern long long dim1;
extern long long dim2;
extern int dimcount;
extern int psgdim[];
extern long long detectCounter;
#ifdef INST
extern int printFaultSitesData(void);
extern int printFaultInjectionData(void);
#endif



void init_array()
{
    int j;

    for (j=0; j<N; j++) {
        a[j] = ((double)j)/N;
    }
}


void print_array()
{
    int j;

    for (j=0; j<N; j++) {
        fprintf(stderr, "%lf ", a[j]);
        if (j%80 == 20) fprintf(stderr, "\n");
    }
    fprintf(stderr, "\n");
}

void func()
{
	int t, i, j ;
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
if ((N >= 4) && (T >= 1)) {
  for (t1=0;t1<=T-1;t1++) {
    b[2] = 0.33333 * (a[2 -1] + a[2] + a[2 + 1]);;
    for (t2=2*t1+3;t2<=2*t1+N-2;t2++) {
      b[(-2*t1+t2)] = 0.33333 * (a[(-2*t1+t2)-1] + a[(-2*t1+t2)] + a[(-2*t1+t2) + 1]);;
      a[(-2*t1+t2-1)] = b[(-2*t1+t2-1)];;
    }
    a[(N-2)] = b[(N-2)];;
  }
}
/* End of CLooG code */

}


int main(int argc, char** argv)
{
    int t, i, j;

    init_array();

    IF_TIME(t_start = rtclock());

  /* Retrieve problem size. */
  if(argc<3){
	  printf("\nINFO: Insufficient arguments!\n\n");
  }

  int n = atoi(argv[1]);
  int tsteps = atoi(argv[2]);
  
  dimcount=1;
  psgdim[0]=n;
  dim0=n;

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
 register int lbv, ubv;
/* Start of CLooG code */
func();;
/* End of CLooG code */

    IF_TIME(t_end = rtclock());
    IF_TIME(fprintf(stdout, "%0.6lfs\n", t_end - t_start));

    if (fopen(".test", "r")) {
#ifdef MPI
        if (my_rank == 0) {
            print_array();
        }
#else
        print_array();
#endif
    }


  if(argc==4){
    print_data_1d(N,a,argv[3],1);
    print_data_1d(N,b,argv[3],0);
  }

 // if(argc>=5) writeOVRData(argv[4],runtime,0);
 // if(argc>=6) writeFPRData(argv[5],detectCounter,0);
  if(detectCounter)
   	printf("\nINFO: Soft error detected\n");
  else
   	printf("\nINFO: No Soft errors detected\n");


#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif


    return 0;
}

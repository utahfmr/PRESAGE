#include <math.h>
#define ceild(n,d)  ceil(((double)(n))/((double)(d)))
#define floord(n,d) floor(((double)(n))/((double)(d)))
#define max(x,y)    ((x) > (y)? (x) : (y))
#define min(x,y)    ((x) < (y)? (x) : (y))

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <assert.h>


#ifdef PERFCTR
#include <papi.h>
#include "papi_defs.h"
#endif

#include "decls.h"

#include "util.h"
#ifdef INST
	extern int printFaultSitesData(void);
	extern int printFaultInjectionData(void);
#endif

void func() {
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
  int t1, t2, t3, t4, t5, t6, t7;
 register int lbv, ubv;
/* Start of CLooG code */
if ((N >= 2) && (T >= 1)) {
  for (t1=0;t1<=floord(T-1,32);t1++) {
    for (t2=t1;t2<=min(floord(T+N-2,32),floord(32*t1+N+30,32));t2++) {
      for (t3=max(ceild(32*t2-N-29,32),t1);t3<=min(min(floord(T+N-1,32),floord(32*t1+N+31,32)),floord(32*t2+N+30,32));t3++) {
        if ((t1 <= floord(32*t3-N,32)) && (t2 <= t3-1)) {
          for (t5=max(32*t2,32*t3-N+1);t5<=32*t2+31;t5++) {
            B[(-32*t3+t5+N)][(N-1)] = B[(-32*t3+t5+N)][(N-1)] - A[(-32*t3+t5+N)][(N-1)] * A[(-32*t3+t5+N)][(N-1)] / B[(-32*t3+t5+N)-1][(N-1)];;
            X[(-32*t3+t5+N)][(N-1)] = X[(-32*t3+t5+N)][(N-1)] - X[(-32*t3+t5+N)-1][(N-1)] * A[(-32*t3+t5+N)][(N-1)] / B[(-32*t3+t5+N)-1][(N-1)];;
          }
        }
        for (t4=max(max(32*t1,32*t2-N+1),32*t3-N+1);t4<=min(min(min(T-1,32*t1+31),32*t2+30),32*t3+30);t4++) {
          if (t1 == t2) {
            for (t6=max(32*t3,t4+1);t6<=min(32*t3+31,t4+N-1);t6++) {
              B[0][(-t4+t6)] = B[0][(-t4+t6)] - A[0][(-t4+t6)] * A[0][(-t4+t6)] / B[0][(-t4+t6)-1];;
              X[0][(-t4+t6)] = X[0][(-t4+t6)] - X[0][(-t4+t6)-1] * A[0][(-t4+t6)] / B[0][(-t4+t6)-1];;
            }
          }
          for (t5=max(32*t2,t4+1);t5<=min(32*t2+31,t4+N-1);t5++) {
            for (t6=max(32*t3,t4+1);t6<=min(32*t3+31,t4+N-1);t6++) {
              B[(-t4+t5)][(-t4+t6)] = B[(-t4+t5)][(-t4+t6)] - A[(-t4+t5)][(-t4+t6)] * A[(-t4+t5)][(-t4+t6)] / B[(-t4+t5)][(-t4+t6)-1];;
              X[(-t4+t5)][(-t4+t6)] = X[(-t4+t5)][(-t4+t6)] - X[(-t4+t5)][(-t4+t6)-1] * A[(-t4+t5)][(-t4+t6)] / B[(-t4+t5)][(-t4+t6)-1];;
              B[(-t4+t5)][(-t4+t6-1)] = B[(-t4+t5)][(-t4+t6-1)] - A[(-t4+t5)][(-t4+t6-1)] * A[(-t4+t5)][(-t4+t6-1)] / B[(-t4+t5)-1][(-t4+t6-1)];;
              X[(-t4+t5)][(-t4+t6-1)] = X[(-t4+t5)][(-t4+t6-1)] - X[(-t4+t5)-1][(-t4+t6-1)] * A[(-t4+t5)][(-t4+t6-1)] / B[(-t4+t5)-1][(-t4+t6-1)];;
            }
            if (t3 >= ceild(t4+N-31,32)) {
              B[(-t4+t5)][(N-1)] = B[(-t4+t5)][(N-1)] - A[(-t4+t5)][(N-1)] * A[(-t4+t5)][(N-1)] / B[(-t4+t5)-1][(N-1)];;
              X[(-t4+t5)][(N-1)] = X[(-t4+t5)][(N-1)] - X[(-t4+t5)-1][(N-1)] * A[(-t4+t5)][(N-1)] / B[(-t4+t5)-1][(N-1)];;
            }
          }
        }
        if ((t1 == t2) && (t1 <= min(floord(T-32,32),t3-1))) {
          for (t6=32*t3;t6<=min(32*t3+31,32*t1+N+30);t6++) {
            B[0][(-32*t1+t6-31)] = B[0][(-32*t1+t6-31)] - A[0][(-32*t1+t6-31)] * A[0][(-32*t1+t6-31)] / B[0][(-32*t1+t6-31)-1];;
            X[0][(-32*t1+t6-31)] = X[0][(-32*t1+t6-31)] - X[0][(-32*t1+t6-31)-1] * A[0][(-32*t1+t6-31)] / B[0][(-32*t1+t6-31)-1];;
          }
        }
      }
    }
  }
}
/* End of CLooG code */
  
}

int main(int argc, char *argv[])
{
	if(argc != 2) {
		printf("\nERROR: Insufficient arguments!\n");
		exit(-1);
	}
    int i, j, k, l, m, n, t;

    int i1, i2;

    double t_start, t_end;
	FILE *fp ;

    init_array();

#ifdef PERFCTR
    PERF_INIT; 
#endif

    IF_TIME(t_start = rtclock());

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
    IF_TIME(fprintf(stderr, "%0.6lfs\n", t_end - t_start));

#ifdef PERFCTR
    PERF_EXIT; 
#endif

//    if (fopen(".test", "r")) {
//        print_array();
//    }

	fp=fopen(argv[1],"w");
	for(int i=0; i<N; i++) {
		for(int j=0; j<N; j++) {
			fprintf(fp, "%lf\n", B[i][j]);
		}
	}
	fclose(fp);
	free(n);

#ifdef INST
	printFaultSitesData();
	printFaultInjectionData();
#endif

    return 0;
}

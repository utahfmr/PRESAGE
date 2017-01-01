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
#include <assert.h>

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
void init_array( double *ex, double *ey, double *hz )
{
	int i, j;
	for (i=0; i<65; i++)
	{
		for (j=0; j<64; j++)
		{
			ey[i*64 + j] = 0;
		}
	}
	
	for (i=0; i<64; i++)
	{
		for (j=0; j<65; j++)
		{
			ex[i*65 + j] = 0;
		}
	}

	for (j=0; j<64; j++)
	{
		ey[j] = ((double)j)/64 ;
	}

	for (i=0; i<64; i++)
	{
		for (j=0; j<64; j++)
		{
			hz[i*64 + j] = 0;
		}
	}
}

static 
void func( double *ex, double *ey, double *hz )
{
	int t, i, j;

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
for (t1=0;t1<=63;t1++) {
  for (t2=0;t2<=59;t2++) {
    ey[t2] = t1;;
  }
  ey[60] = t1;;
  for (t3=1;t3<=63;t3++) {
    ex[0*65 + t3] = ex[0*65 + t3] - 0.5*(hz[0*64 +t3] - hz[(0 -1)*64 + t3]);;
  }
  ey[61] = t1;;
  ey[62] = t1;;
  for (t3=1;t3<=59;t3++) {
    ex[1*65 + t3] = ex[1*65 + t3] - 0.5*(hz[1*64 +t3] - hz[(1 -1)*64 + t3]);;
  }
  for (t3=60;t3<=61;t3++) {
    ey[1*64 + (t3-60)] = ey[1*64 + (t3-60)] - 0.5*(hz[1*64 +(t3-60)] - hz[(1 -1)*64 + (t3-60)]);;
    ex[1*65 + t3] = ex[1*65 + t3] - 0.5*(hz[1*64 +t3] - hz[(1 -1)*64 + t3]);;
  }
  hz[0*64 + 0] = hz[0*64 + 0] - 0.7*(ex[0*65 + 0 +1] - ex[0*65 + 0] + ey[(0 +1)*64 + 0] - ey[0*64 + 0]) ;;
  ey[1*64 + 2] = ey[1*64 + 2] - 0.5*(hz[1*64 +2] - hz[(1 -1)*64 + 2]);;
  ex[1*65 + 62] = ex[1*65 + 62] - 0.5*(hz[1*64 +62] - hz[(1 -1)*64 + 62]);;
  ey[1*64 + 3] = ey[1*64 + 3] - 0.5*(hz[1*64 +3] - hz[(1 -1)*64 + 3]);;
  ex[1*65 + 63] = ex[1*65 + 63] - 0.5*(hz[1*64 +63] - hz[(1 -1)*64 + 63]);;
  for (t3=64;t3<=123;t3++) {
    ey[1*64 + (t3-60)] = ey[1*64 + (t3-60)] - 0.5*(hz[1*64 +(t3-60)] - hz[(1 -1)*64 + (t3-60)]);;
  }
  ey[63] = t1;;
  hz[0*64 + 1] = hz[0*64 + 1] - 0.7*(ex[0*65 + 1 +1] - ex[0*65 + 1] + ey[(0 +1)*64 + 1] - ey[0*64 + 1]) ;;
  for (t2=64;t2<=122;t2++) {
    for (t3=1;t3<=63;t3++) {
      if (t2%2 == 0) {
        ex[((t2-60)/2)*65 + t3] = ex[((t2-60)/2)*65 + t3] - 0.5*(hz[((t2-60)/2)*64 +t3] - hz[(((t2-60)/2)-1)*64 + t3]);;
      }
    }
    for (t3=t2;t3<=30*t2-1801;t3++) {
      if ((59*t2+t3)%60 == 0) {
        hz[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)] = hz[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)] - 0.7*(ex[((-t2+t3)/60)*65 + ((31*t2-t3-1860)/30)+1] - ex[((-t2+t3)/60)*65 + ((31*t2-t3-1860)/30)] + ey[(((-t2+t3)/60)+1)*64 + ((31*t2-t3-1860)/30)] - ey[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)]) ;;
      }
    }
    for (t3=30*t2-1800;t3<=31*t2-1860;t3++) {
      if (t2%2 == 0) {
        ey[((t2-60)/2)*64 + (-30*t2+t3+1800)] = ey[((t2-60)/2)*64 + (-30*t2+t3+1800)] - 0.5*(hz[((t2-60)/2)*64 +(-30*t2+t3+1800)] - hz[(((t2-60)/2)-1)*64 + (-30*t2+t3+1800)]);;
      }
      if ((59*t2+t3)%60 == 0) {
        hz[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)] = hz[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)] - 0.7*(ex[((-t2+t3)/60)*65 + ((31*t2-t3-1860)/30)+1] - ex[((-t2+t3)/60)*65 + ((31*t2-t3-1860)/30)] + ey[(((-t2+t3)/60)+1)*64 + ((31*t2-t3-1860)/30)] - ey[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)]) ;;
      }
    }
    for (t3=31*t2-1859;t3<=30*t2-1737;t3++) {
      if (t2%2 == 0) {
        ey[((t2-60)/2)*64 + (-30*t2+t3+1800)] = ey[((t2-60)/2)*64 + (-30*t2+t3+1800)] - 0.5*(hz[((t2-60)/2)*64 +(-30*t2+t3+1800)] - hz[(((t2-60)/2)-1)*64 + (-30*t2+t3+1800)]);;
      }
    }
  }
  for (t3=123;t3<=1889;t3++) {
    if ((t3+57)%60 == 0) {
      hz[((t3-123)/60)*64 + ((-t3+1953)/30)] = hz[((t3-123)/60)*64 + ((-t3+1953)/30)] - 0.7*(ex[((t3-123)/60)*65 + ((-t3+1953)/30)+1] - ex[((t3-123)/60)*65 + ((-t3+1953)/30)] + ey[(((t3-123)/60)+1)*64 + ((-t3+1953)/30)] - ey[((t3-123)/60)*64 + ((-t3+1953)/30)]) ;;
    }
  }
  for (t3=1890;t3<=1953;t3++) {
    if (t3 == 1923) {
      hz[30*64 + 1] = hz[30*64 + 1] - 0.7*(ex[30*65 + 1 +1] - ex[30*65 + 1] + ey[(30 +1)*64 + 1] - ey[30*64 + 1]) ;;
    }
  }
  for (t2=124;t2<=186;t2++) {
    for (t3=1;t3<=63;t3++) {
      if (t2%2 == 0) {
        ex[((t2-60)/2)*65 + t3] = ex[((t2-60)/2)*65 + t3] - 0.5*(hz[((t2-60)/2)*64 +t3] - hz[(((t2-60)/2)-1)*64 + t3]);;
      }
    }
    for (t3=max(t2,31*t2-3750);t3<=30*t2-1801;t3++) {
      if ((59*t2+t3)%60 == 0) {
        hz[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)] = hz[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)] - 0.7*(ex[((-t2+t3)/60)*65 + ((31*t2-t3-1860)/30)+1] - ex[((-t2+t3)/60)*65 + ((31*t2-t3-1860)/30)] + ey[(((-t2+t3)/60)+1)*64 + ((31*t2-t3-1860)/30)] - ey[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)]) ;;
      }
    }
    for (t3=30*t2-1800;t3<=30*t2-1737;t3++) {
      if (t2%2 == 0) {
        ey[((t2-60)/2)*64 + (-30*t2+t3+1800)] = ey[((t2-60)/2)*64 + (-30*t2+t3+1800)] - 0.5*(hz[((t2-60)/2)*64 +(-30*t2+t3+1800)] - hz[(((t2-60)/2)-1)*64 + (-30*t2+t3+1800)]);;
      }
      if ((59*t2+t3)%60 == 0) {
        hz[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)] = hz[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)] - 0.7*(ex[((-t2+t3)/60)*65 + ((31*t2-t3-1860)/30)+1] - ex[((-t2+t3)/60)*65 + ((31*t2-t3-1860)/30)] + ey[(((-t2+t3)/60)+1)*64 + ((31*t2-t3-1860)/30)] - ey[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)]) ;;
      }
    }
    for (t3=30*t2-1736;t3<=31*t2-1860;t3++) {
      if ((59*t2+t3)%60 == 0) {
        hz[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)] = hz[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)] - 0.7*(ex[((-t2+t3)/60)*65 + ((31*t2-t3-1860)/30)+1] - ex[((-t2+t3)/60)*65 + ((31*t2-t3-1860)/30)] + ey[(((-t2+t3)/60)+1)*64 + ((31*t2-t3-1860)/30)] - ey[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)]) ;;
      }
    }
  }
  for (t2=187;t2<=251;t2++) {
    for (t3=31*t2-3750;t3<=min(t2+3780,31*t2-1860);t3++) {
      if ((59*t2+t3)%60 == 0) {
        hz[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)] = hz[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)] - 0.7*(ex[((-t2+t3)/60)*65 + ((31*t2-t3-1860)/30)+1] - ex[((-t2+t3)/60)*65 + ((31*t2-t3-1860)/30)] + ey[(((-t2+t3)/60)+1)*64 + ((31*t2-t3-1860)/30)] - ey[((-t2+t3)/60)*64 + ((31*t2-t3-1860)/30)]) ;;
      }
    }
  }
}
/* End of CLooG code */
}

int main(int argc, char** argv)
{
	if(argc<3)
	{
		printf("\nInfo: Insufficient arguments!\n\n");
	}

	double *ex = (double*)malloc(64*65*sizeof(double));
	double *ey = (double*)malloc(65*64*sizeof(double));
	double *hz = (double*)malloc(64*64*sizeof(double));

	psgProtect(ex, (long long) &ex[0], (long long) &ex[64*65 - 1]);
	psgProtect(ey, (long long) &ey[0], (long long) &ey[65*64 - 1]);
	psgProtect(hz, (long long) &hz[0], (long long) &hz[64*64 - 1]);

	/* Initialize array */
	init_array(ex,ey,hz);

	func(ex,ey,hz);

	if(argc==4)
	{
		print_data_2d(64,65,ex,argv[3],1);
		print_data_2d(65,64,ey,argv[3],0);
		print_data_2d(64,64,hz,argv[3],0);
	}

	if(detectCounter)
		printf("\nInfo: Soft error detected\n");
	else
		printf("\nInfo: No Soft Errors detected\n");

	free(ex);
	free(ey);
	free(hz);

	#ifdef INST
		printFaultSitesData();
		printFaultInjectionData();
	#endif
}

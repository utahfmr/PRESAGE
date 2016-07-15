/**
 * This version is stamped on Apr. 14, 2015
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* seidel-2d.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <sys/time.h>


/* Presage specific headers*/
#include "Utility.h"
#include "PresageRT.h"

/* Include benchmark-specific header. */
#include "seidel-2d.h"

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


/* Array initialization. */
static void init_array (int n, double *a){
  int i, j;
  srand(0);
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      a[i*n+j] = (double) rand(); //i*(j+2) + 2) / n;
}


static void kernel_seidel_2d(int tsteps, int n, double *a){
  int t, i, j;
#pragma scop
  for (t = 0; t <= tsteps-1; t++)
    for (i = 1; i<= n-2; i++)
      for (j = 1; j <= n-2; j++)
    	  a[i*n+j] = (a[(i-1)*n+(j-1)] + a[(i-1)*n+j] + a[(i-1)*n+(j+1)]
		   + a[i*n+(j-1)] + a[i*n+j] + a[i*n+(j+1)]
		   + a[(i+1)*n+(j-1)] + a[(i+1)*n+j] + a[(i+1)*n+(j+1)])/9.0;
#pragma endscop

}


int main(int argc, char** argv){
  double runtime=0.0;
  struct timeval start, end;
  
  /* Retrieve problem size. */
  if(argc<3){
	  printf("\nERROR: Insufficient Arguments!\n\n");
	  exit(-1);
  }

  int n=atoi(argv[1]);
  int tsteps=atoi(argv[2]);

  dimcount=1;
  psgdim[0]=n;
  dim0=n;

  double *a=(double*)malloc(n*n*sizeof(double));
  psgProtect(a,(long long) &a[0],(long long) &a[(n*n)-1]);
  
  /* Initialize array(s). */
  init_array (n,a);

  /* Run kernel. */
  gettimeofday(&start, NULL);
  kernel_seidel_2d (tsteps,n,a);
  gettimeofday(&end, NULL);
  printf("Total time taken to execute the kernel: %lf microseconds\n", (double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000);
  runtime=(double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000;

  if(argc==4){
    print_data_2d(n,n,a,argv[3],1);
  }
  if(argc>=5) writeOVRData(argv[4],runtime,0);
  if(argc>=6) writeFPRData(argv[5],detectCounter,0);

  if(detectCounter)
  	printf("\nINFO: Soft error detected\n");
  else
  	printf("\nINFO: No Soft errors detected\n");

  free(a);

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif
  
  return 0;
}

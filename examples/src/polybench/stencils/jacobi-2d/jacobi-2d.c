/**
 * This version is stamped on Apr. 14, 2015
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* jacobi-2d.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <sys/time.h>


/* Presage specific headers*/
#include "Utility.h"
#include "PresageRT.h"

/* Include benchmark-specific header. */
#include "jacobi-2d.h"

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
static
void init_array (int n, double *A, double *B)
{
  int i, j;
  srand(0);
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      {
    	A[i*n+j] = (double) rand(); //i*(j+2) + 2) / n;
    	B[i*n+j] = (double) rand(); //i*(j+3) + 3) / n;
      }
}



/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_jacobi_2d(int tsteps,int n, double *A, double *B)
{
  int t, i, j;

#pragma scop
  for (t = 0;t<tsteps;t++){
      for (i=1;i<n-1;i++)
	for (j=1;j<n-1;j++){
	  B[i*n+j] = 0.2 * (A[i*n+j] + A[i*n+j-1] + A[i*n+j+1]
			    + A[(i+1)*n+j] + A[(i-1)*n+j]);
	}
      for (i=1;i<n-1;i++)
	for (j=1;j<n-1;j++){
	  A[i*n+j] = 0.2 * (B[i*n+j] + B[i*n+j-1] + B[i*n+j+1]
			    + B[(i+1)*n+j] + B[(i-1)*n+j]);
	}
    }
#pragma endscop

}


int main(int argc, char** argv)
{
  double runtime=0.0;
  struct timeval start, end;
  if(argc<3){
    printf("\nERROR: Insufficient Arguments!\n\n");
    exit(-1);
  }

  int n=atoi(argv[1]);
  int tsteps=atoi(argv[2]);

  dimcount=1;
  psgdim[0]=n;
  dim0=n;

  /* Variable declaration/allocation. */
  double *A=(double*)malloc(n*n*sizeof(double));
  double *B=(double*)malloc(n*n*sizeof(double));

  psgProtect(A,(long long) &A[0],(long long) &A[(n*n)-1]);
  psgProtect(B,(long long) &B[0],(long long) &B[(n*n)-1]);

  /* Initialize array(s). */
  init_array (n,A,B);
    
  /* Run kernel. */
  gettimeofday(&start, NULL);
  kernel_jacobi_2d(tsteps,n,A,B);
  gettimeofday(&end, NULL);
  printf("Total time taken to execute the kernel: %lf microseconds\n", (double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000);
  runtime=(double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000;


  if(argc==4){
    print_data_2d(n,n,A,argv[3],1);
    print_data_2d(n,n,B,argv[3],0);
  }
  
  if(argc>=5) writeOVRData(argv[4],runtime,0);
  if(argc>=6) writeFPRData(argv[5],detectCounter,0);

  if(detectCounter)
	printf("\nINFO: Soft error detected\n");
  else
	printf("\nINFO: No Soft errors detected\n");

  free(A);
  free(B);

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif

  return 0;
}

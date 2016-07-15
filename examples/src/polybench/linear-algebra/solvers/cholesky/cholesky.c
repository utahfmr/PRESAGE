/**
 * This version is stamped on Apr. 14, 2015
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* cholesky.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Presage specific headers*/
#include "Utility.h"
#include "PresageRT.h"

/* Include benchmark-specific header. */
#include "cholesky.h"

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
void init_array(int n,double *A){
  int i, j;
  srand(0);
  for (i = 0; i < n; i++){
      for (j = 0; j <= i; j++)
    	  A[i*n+j] = (double) rand(); //(-j % n) / n + 1;
      for (j = i+1; j < n; j++) {
    	  A[i*n+j] = (double) rand(); //0.0;
      }
      A[i*n+i] = (double) rand(); //1.0;
  }

  /* Make the matrix positive semi-definite. */
  int r,s,t;
  double *B=(double*)malloc(n*n*sizeof(double));
  for (r = 0; r < n; ++r)
    for (s = 0; s < n; ++s)
      B[r*n+s] = 0.0;
  for (t = 0; t < n; ++t)
    for (r = 0; r < n; ++r)
      for (s = 0; s < n; ++s)
	B[r*n+s] += A[r*n+t] * A[s*n+t];
    for (r = 0; r < n; ++r)
      for (s = 0; s < n; ++s)
	A[r*n+s] = B[r*n+s];
  free(B);

}



/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_cholesky(int n,double *A){
  int i, j, k;

#pragma scop
  for (i = 0; i < n; i++) {
     //j<i
     for (j = 0; j < i; j++) {
        for (k = 0; k < j; k++) {
           A[i*n+j] -= A[i*n+k] * A[j*n+k];
        }
        A[i*n+j] /= A[j*n+j];
     }
     // i==j case
     for (k = 0; k < i; k++) {
        A[i*n+i] -= A[i*n+k] * A[i*n+k];
     }
     A[i*n+i] = sqrt(A[i*n+i]);
  }
#pragma endscop

}


int main(int argc, char** argv){
  
  double runtime=0.0;
  struct timeval start, end;

  if(argc<2){
    printf("\nERROR: Insufficient Arguments!\n\n");
    exit(-1);
  }
  
  /* Retrieve problem size. */
  int n = atoi(argv[1]);
  dimcount=1;
  psgdim[0]=n;
  dim0=n;

  /* Variable declaration/allocation. */
  double *A=(double*)malloc(n*n*sizeof(double));
  psgProtect(A,(long long) &A[0],(long long) &A[(n*n)-1]);
  
  /* Initialize array(s). */
  init_array (n,A);

  /* Run kernel. */
  gettimeofday(&start, NULL);           
  kernel_cholesky (n,A);
  gettimeofday(&end, NULL);
  printf("Total time taken to execute the kernel: %lf seconds\n", (double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000);
  runtime=(double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000;

  if(argc==3){
    print_data_2d(n,n,A,argv[2],1);
  }
  
  if(argc>=4) writeOVRData(argv[3],runtime,0);
  if(argc>=5) writeFPRData(argv[4],detectCounter,0);

  if(detectCounter)
    printf("\nINFO: Soft error detected\n");
  else
    printf("\nINFO: No Soft errors detected\n");    

  /* Be clean. */
  free(A);

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif       

  return 0;
}

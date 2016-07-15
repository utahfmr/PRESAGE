/**
 * This version is stamped on Apr. 14, 2015
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* syrk.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>


/* Presage specific headers*/
#include "Utility.h"
#include "PresageRT.h"


/* Include benchmark-specific header. */
#include "syrk.h"

extern long long detectCounter;

#ifdef INST
extern int printFaultSitesData(void);
extern int printFaultInjectionData(void);
#endif


/* Array initialization. */
static
void init_array(int n, int m,double *alpha,double *beta,double *C,double *A){
  int i, j;

  *alpha = 1.5;
  *beta = 1.2;
  
  for (i = 0; i < n; i++)
    for (j = 0; j < m; j++)
      A[i*m+j] = (double) (i*j%n) / n;
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      C[i*n+j] = (double) (i*j%m) / m;
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_syrk(int n, int m,double alpha,double beta,double *C,double *A)
{
  int i, j, k;

//BLAS PARAMS
//TRANS = 'N' 
//UPLO  = 'L'
// =>  Form  C := alpha*A*A**T + beta*C.
//A is NxM
//C is NxN
#pragma scop
  for (i = 0; i < n; i++) {
    for (j = 0; j <= i; j++)
      C[i*n+j] *= beta;
    for (k = 0; k < m; k++) {
      for (j = 0; j <= i; j++)
        C[i*n+j] += alpha * A[i*m+k] * A[j*m+k];
    }
  }
#pragma endscop

}


int main(int argc, char** argv){

  double runtime=0.0;
  struct timeval start, end;

  if(argc<3){
    printf("\nERROR: Insufficient Arguments!\n\n");
    exit(-1);
  }
  
  /* Retrieve problem size. */
  int n = atoi(argv[1]);
  int m = atoi(argv[2]);

  /* Variable declaration/allocation. */
  double alpha;
  double beta;
  
  double *C=(double*)malloc(n*n*sizeof(double));
  double *A=(double*)malloc(n*m*sizeof(double));
  
  psgProtect(C,(long long) &C[0],(long long) &C[(n*n)-1]);
  psgProtect(A,(long long) &A[0],(long long) &A[(n*m)-1]);
  
  /* Initialize array(s). */
  init_array (n,m,&alpha,&beta,C,A);


  /* Run kernel. */
  gettimeofday(&start, NULL);  
  kernel_syrk (n,m,alpha,beta,C,A);
  gettimeofday(&end, NULL);
  printf("Total time taken to execute the kernel: %lf microseconds\n", (double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000);
  runtime=(double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000;

  if(argc>=4){
    print_data_2d(n,n,C,argv[3],1);
    print_data_2d(n,m,A,argv[3],0);
  }
  
  if(argc>=5) writeOVRData(argv[4],runtime,0);
  if(argc>=6) writeFPRData(argv[5],detectCounter,0);

  if(detectCounter)
    printf("\nINFO: Soft error detected\n");
  else
    printf("\nINFO: No Soft errors detected\n");

  /* Be clean. */
  free(C);
  free(A);

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif
  
  return 0;
}

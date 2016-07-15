/**
 * This version is stamped on Apr. 14, 2015
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* trmm.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>


/* Presage specific headers*/
#include "Utility.h"
#include "PresageRT.h"

/* Include benchmark-specific header. */
#include "trmm.h"

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
void init_array(int m, int n,double *alpha,double *A,double *B){
  int i, j;
  srand(0);
  *alpha = 1.5;
  for (i = 0; i < m; i++) {
    for (j = 0; j < i; j++) {
      A[i*m+j] = rand(); //(double)((i+j) % m)/m;
    }
    A[i*m+i] = 1.0;
    for (j = 0; j < n; j++) {
      B[i*n+j] = rand(); //(double)((n+(i-j)) % n)/n;
    }
 }

}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_trmm(int m, int n,double alpha,double *A,double *B)
{
  int i, j, k;
  double temp;

//BLAS parameters
//SIDE   = 'L'
//UPLO   = 'L'
//TRANSA = 'T'
//DIAG   = 'U'
// => Form  B := alpha*A**T*B.
// A is MxM
// B is MxN
#pragma scop
  for (i = 0; i < m; i++)
     for (j = 0; j < n; j++) {
        for (k = i+1; k < m; k++) 
           B[i*n+j] += A[k*m+i] * B[k*n+j];
        B[i*n+j] = alpha * B[i*n+j];
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
  int m = atoi(argv[1]);
  int n = atoi(argv[2]);

  dimcount=2;
  psgdim[0]=m;
  psgdim[1]=n;
  dim0=m;
  dim1=n;

  /* Variable declaration/allocation. */
  double alpha;
  
  double *A=(double*)malloc(m*m*sizeof(double));
  double *B=(double*)malloc(m*n*sizeof(double));  

  psgProtect(A,(long long) &A[0],(long long) &A[(m*m)-1]);
  psgProtect(B,(long long) &B[0],(long long) &B[(m*n)-1]);  
  
  /* Initialize array(s). */
  init_array (m,n,&alpha,A,B);


  /* Run kernel. */
  gettimeofday(&start, NULL);    
  kernel_trmm (m,n,alpha,A,B);
  gettimeofday(&end, NULL);
  printf("Total time taken to execute the kernel: %lf microseconds\n", (double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000);
  runtime=(double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000;

  if(argc==4){
    print_data_2d(m,m,A,argv[3],1);
    print_data_2d(m,n,B,argv[3],0);
  }
  
  if(argc>=5) writeOVRData(argv[4],runtime,0);
  if(argc>=6) writeFPRData(argv[5],detectCounter,0);

  if(detectCounter)
    printf("\nINFO: Soft error detected\n");
  else
    printf("\nINFO: No Soft errors detected\n");  

  /* Be clean. */
  free(A);
  free(B);

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif  

  return 0;
}

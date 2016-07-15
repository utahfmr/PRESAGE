/**
 * This version is stamped on Apr. 14, 2015
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* gemm.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <sys/time.h>

/* Presage specific headers*/
#include "Utility.h"
#include "PresageRT.h"

/* Include benchmark-specific header. */
#include "gemm.h"

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
void init_array(int ni, int nj, int nk,	double* alpha,double *beta,
		double *C,double *A,double *B){
  int i, j;
  *alpha = 1.5;
  *beta = 1.2;
  
  srand(0);
  for (i = 0; i < ni; i++)
    for (j = 0; j < nj; j++)
      C[i*nj+j] = (double) rand(); //(i*j % ni) / ni;
  for (i = 0; i < ni; i++)
    for (j = 0; j < nk; j++)
      A[i*nk+j] = (double) rand(); //(i*(j+1) % nk) / nk;
  for (i = 0; i < nk; i++)
    for (j = 0; j < nj; j++)
      B[i*nj+j] = (double) rand(); //(i*(j+2) % nj) / nj;
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_gemm(int ni, int nj, int nk,
		 double alpha, double beta,
		 double *C,double *A,double *B){
  int i, j, k;

//BLAS PARAMS
//TRANSA = 'N'
//TRANSB = 'N'
// => Form C := alpha*A*B + beta*C,
//A is NIxNK
//B is NKxNJ
//C is NIxNJ
#pragma scop
  for (i=0;i<ni;i++) {
    for (j=0;j<nj;j++)
	C[i*nj+j] *= beta;
    for (k=0;k<nk;k++){
       for (j=0;j<nj;j++)
	  C[i*nj+j] += alpha * A[i*nk+k] * B[k*nj+j];
    }
  }
#pragma endscop

}


int main(int argc, char** argv)
{
  double runtime=0.0;
  struct timeval start, end;

  if(argc<4){
    printf("\nERROR: Insufficient Arguments!\n\n");
    exit(-1);
  }
  
  /* Retrieve problem size. */
  int ni = atoi(argv[1]);
  int nj = atoi(argv[2]);
  int nk = atoi(argv[3]);

  dimcount=3;
  psgdim[0]=ni;
  psgdim[1]=nj;
  psgdim[2]=nk;
  dim0=ni;
  dim1=nj;
  dim2=nk;

  /* Variable declaration/allocation. */
  double alpha;
  double beta;

  double *C=(double*)malloc(ni*nj*sizeof(double));
  double *A=(double*)malloc(ni*nk*sizeof(double));
  double *B=(double*)malloc(nk*nj*sizeof(double));

  psgProtect(C,(long long) &C[0],(long long) &C[(ni*nj)-1]);
  psgProtect(A,(long long) &A[0],(long long) &A[(ni*nk)-1]);
  psgProtect(B,(long long) &B[0],(long long) &B[(nk*nj)-1]);
  

  /* Initialize array(s). */
  init_array (ni,nj,nk,&alpha,&beta,C,A,B);

  /* Run kernel. */
  gettimeofday(&start, NULL);
  kernel_gemm (ni,nj,nk,alpha,beta,C,A,B);
  gettimeofday(&end, NULL);
  printf("Total time taken to execute the kernel: %lf microseconds\n", (double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000);
  runtime=(double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000;


  if(argc==5){
    print_data_2d(ni,nj,C,argv[4],1);
    print_data_2d(ni,nk,A,argv[4],0);
    print_data_2d(nk,nj,B,argv[4],0);
  }
  
  if(argc>=6) writeOVRData(argv[5],runtime,0);
  if(argc>=7) writeFPRData(argv[6],detectCounter,0);

  if(detectCounter)
    printf("\nINFO: Soft error detected\n");
  else
    printf("\nINFO: No Soft errors detected\n");
  
  /* Be clean. */
  free(C);
  free(A);
  free(B);

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif
  
  return 0;
}

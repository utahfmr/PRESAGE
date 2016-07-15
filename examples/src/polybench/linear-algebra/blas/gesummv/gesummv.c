/**
 * This version is stamped on Apr. 14, 2015
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* gesummv.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Presage specific headers*/
#include "Utility.h"
#include "PresageRT.h"

/* Include benchmark-specific header. */
#include "gesummv.h"

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
void init_array(int n,double *alpha,double *beta,double *A,double *B,double *x)
{
  int i, j;

  *alpha = 1.5;
  *beta = 1.2;
  srand(0);
  for (i = 0; i < n; i++){
      x[i] = (double)rand(); //( i % n) / n;
      for (j = 0; j < n; j++) {
    	  A[i*n+j] = (double) rand(); //(i*j % n) / n;
    	  B[i*n+j] = (double) rand(); //(i*j % n) / n;
      }
    }
}



/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_gesummv(int n,double alpha,double beta,
		    double *A,double *B,double *tmp,
		    double *x,double *y){
  int i, j;  
#pragma scop
  for (i = 0; i < n; i++){
    tmp[i] = 0.0;
    y[i] = 0.0;
    for (j = 0; j < n; j++){
      tmp[i] = A[i*n+j] * x[j] + tmp[i];
      y[i] = B[i*n+j] * x[j] + y[i];
    }
    y[i] = alpha * tmp[i] + beta * y[i];
  }
#pragma endscop
  
}


int main(int argc, char** argv)
{
  double runtime=0.0;
  struct timeval start, end;
  
  /* Retrieve problem size. */
  if(argc<2){
    printf("\nERROR: Insufficient Arguments!\n\n");
    exit(-1);
  }
  
  int n=atoi(argv[1]);

  dimcount=1;
  psgdim[0]=n;
  dim0=n;

  /* Variable declaration/allocation. */
  double alpha;
  double beta;
  double *A=(double*)malloc(n*n*sizeof(double));
  double *B=(double*)malloc(n*n*sizeof(double));
  double *tmp=(double*)malloc(n*sizeof(double));
  double *x=(double*)malloc(n*sizeof(double));
  double *y=(double*)malloc(n*sizeof(double));

  psgProtect(A,(long long) &A[0],(long long) &A[(n*n)-1]);
  psgProtect(B,(long long) &B[0],(long long) &B[(n*n)-1]);
  psgProtect(x,(long long) &x[0],(long long) &x[n-1]);
  psgProtect(y,(long long) &y[0],(long long) &y[n-1]);

  /* Initialize array(s). */
  init_array (n, &alpha, &beta,A,B,x);

  /* Run kernel. */
  gettimeofday(&start, NULL);  
  kernel_gesummv (n, alpha, beta,A,B,tmp,x,y);
  gettimeofday(&end, NULL);
  printf("Total time taken to execute the kernel: %lf microseconds\n", (double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000);
  runtime=(double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000;

  if(argc==3){
    print_data_2d(n,n,A,argv[2],1);
    print_data_2d(n,n,B,argv[2],0);
    print_data_1d(n,x,argv[2],0);
    print_data_1d(n,y,argv[2],0);
  }

  if(argc>=4) writeOVRData(argv[3],runtime,0);
  if(argc>=5) writeFPRData(argv[4],detectCounter,0);

  if(detectCounter)
    printf("\nINFO: Soft error detected\n");
  else
    printf("\nINFO: No Soft errors detected\n");  
  
  /* Be clean. */
  free(A);
  free(B);
  free(tmp);
  free(x);
  free(y);

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif

  return 0;
}

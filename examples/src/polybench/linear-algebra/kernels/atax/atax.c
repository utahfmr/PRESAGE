/**
 * This version is stamped on Apr. 14, 2015
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* atax.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Presage specific headers*/
#include "Utility.h"
#include "PresageRT.h"

/* Include benchmark-specific header. */
#include "atax.h"

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
void init_array (int m, int n,double *A,double *x){
  int i, j;
  double fn;
  fn = (double)n;
  srand(0);
  for (i = 0; i < n; i++)
      x[i] = (double) rand(); //1 + (i / fn);
  for (i = 0; i < m; i++)
    for (j = 0; j < n; j++)
      A[i*n+j] = (double) rand(); //((i+j) % n) / (5*m);
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_atax(int m, int n,double *A,double *x,double *y,double *tmp){
  int i, j;

#pragma scop
  for (i = 0; i < n; i++)
    y[i] = 0;
  for (i = 0; i < m; i++){
      tmp[i] = 0.0;
      for (j = 0; j < n; j++)
	tmp[i] = tmp[i] + A[i*n+j] * x[j];
      for (j = 0; j < n; j++)
	y[j] = y[j] + A[i*n+j] * tmp[i];
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
  double *A=(double*)malloc(m*n*sizeof(double));
  double *x=(double*)malloc(n*sizeof(double));
  double *y=(double*)malloc(n*sizeof(double));
  double *tmp=(double*)malloc(m*sizeof(double));

  psgProtect(A,(long long) &A[0],(long long) &A[(m*n)-1]);
  psgProtect(x,(long long) &x[0],(long long) &x[n-1]);
  psgProtect(y,(long long) &y[0],(long long) &y[n-1]);  

  /* Initialize array(s). */
  init_array (m,n,A,x);

  /* Run kernel. */
  gettimeofday(&start, NULL);      
  kernel_atax (m,n,A,x,y,tmp);
  gettimeofday(&end, NULL);
  printf("Total time taken to execute the kernel: %lf microseconds\n", (double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000);
  runtime=(double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000;

  if(argc==4){
    print_data_2d(m,n,A,argv[3],1);
    print_data_1d(n,x,argv[3],0);
    print_data_1d(n,y,argv[3],0);
  }
  
  if(argc>=5) writeOVRData(argv[4],runtime,0);
  if(argc>=6) writeFPRData(argv[5],detectCounter,0);

  if(detectCounter)
    printf("\nINFO: Soft error detected\n");
  else
    printf("\nINFO: No Soft errors detected\n");    

  /* Be clean. */
  free(A);
  free(x);
  free(y);
  free(tmp);

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif    
  
  return 0;
}


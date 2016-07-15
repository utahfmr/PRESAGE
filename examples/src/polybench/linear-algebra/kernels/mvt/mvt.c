/**
 * This version is stamped on Apr. 14, 2015
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* mvt.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Presage specific headers*/
#include "Utility.h"
#include "PresageRT.h"

/* Include benchmark-specific header. */
#include "mvt.h"

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
void init_array(int n,double *x1,double *x2,double *y_1,double *y_2,double *A){
  int i, j;
  srand(0);
  for (i = 0; i < n; i++)
    {
      x1[i] = (double) rand(); //(i % n) / n;
      x2[i] = (double) rand(); //((i + 1) % n) / n;
      y_1[i] = (double) rand(); //((i + 3) % n) / n;
      y_2[i] = (double) rand(); //((i + 4) % n) / n;
      for (j = 0; j < n; j++)
    	  A[i*n+j] = (double) rand(); //(i*j % n) / n;
    }
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_mvt(int n,double *x1,double *x2,double *y_1,double *y_2,double *A){
  int i, j;
#pragma scop
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      x1[i] = x1[i] + A[i*n+j] * y_1[j];
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      x2[i] = x2[i] + A[j*n+i] * y_2[j];
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
  double *x1=(double*)malloc(n*sizeof(double));
  double *x2=(double*)malloc(n*sizeof(double));
  double *y_1=(double*)malloc(n*sizeof(double));
  double *y_2=(double*)malloc(n*sizeof(double));

  psgProtect(A,(long long) &A[0],(long long) &A[(n*n)-1]);  
  psgProtect(x1,(long long) &x1[0],(long long) &x1[n-1]);
  psgProtect(x2,(long long) &x2[0],(long long) &x2[n-1]);
  psgProtect(y_1,(long long) &y_1[0],(long long) &y_1[n-1]);
  psgProtect(y_2,(long long) &y_2[0],(long long) &y_2[n-1]);

  /* Initialize array(s). */
  init_array (n,x1,x2,y_1,y_2,A);

  /* Run kernel. */ 
  gettimeofday(&start, NULL);         
  kernel_mvt (n,x1,x2,y_1,y_2,A);
  gettimeofday(&end, NULL);
  printf("Total time taken to execute the kernel: %lf microseconds\n", (double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000);
  runtime=(double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000;

  if(argc==3){
    print_data_2d(n,n,A,argv[2],1);
    print_data_1d(n,x1,argv[2],0);
    print_data_1d(n,x2,argv[2],0);
    print_data_1d(n,y_1,argv[2],0);
    print_data_1d(n,y_2,argv[2],0);
  }
  
  if(argc>=4) writeOVRData(argv[3],runtime,0);
  if(argc>=5) writeFPRData(argv[4],detectCounter,0);

  if(detectCounter)
    printf("\nINFO: Soft error detected\n");
  else
    printf("\nINFO: No Soft errors detected\n");    

  /* Be clean. */
  free(A);
  free(x1);
  free(x2);
  free(y_1);
  free(y_2);

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif      

  return 0;
}

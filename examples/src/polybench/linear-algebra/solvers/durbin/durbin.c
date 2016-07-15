/**
 * This version is stamped on Apr. 14, 2015
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* durbin.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Presage specific headers*/
#include "Utility.h"
#include "PresageRT.h"

/* Include benchmark-specific header. */
#include "durbin.h"


extern long long detectCounter;

#ifdef INST
extern int printFaultSitesData(void);
extern int printFaultInjectionData(void);
#endif

/* Array initialization. */
static
void init_array (int n,double *r){
  int i, j;

  for (i = 0; i < n; i++){
    r[i] = (n+1-i);
  }
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_durbin(int n,double *r, double *y)
{
 double z[N];
 double alpha;
 double beta;
 double sum;

 int i,k;

#pragma scop
 y[0] = -r[0];
 beta = 1.0;
 alpha = -r[0];

 for (k = 1; k < n; k++) {
   beta = (1-alpha*alpha)*beta;
   sum = 0.0;
   for (i=0; i<k; i++) {
      sum += r[k-i-1]*y[i];
   }
   alpha = - (r[k] + sum)/beta;

   for (i=0; i<k; i++) {
      z[i] = y[i] + alpha*y[k-i-1];
   }
   for (i=0; i<k; i++) {
     y[i] = z[i];
   }
   y[k] = alpha;
 }
#pragma endscop

}


int main(int argc, char** argv)
{
  double runtime=0.0;
  struct timeval start, end;

  if(argc<2){
    printf("\nERROR: Insufficient Arguments!\n\n");
    exit(-1);
  }
  
  /* Retrieve problem size. */
  int n = atoi(argv[1]);  

  /* Variable declaration/allocation. */
  double *r=(double*)malloc(n*sizeof(double));
  double *y=(double*)malloc(n*sizeof(double));


  /* Initialize array(s). */
  init_array (n,r);

  /* Run kernel. */
  gettimeofday(&start, NULL);
  kernel_durbin (n,r,y);
  gettimeofday(&end, NULL);
  printf("Total time taken to execute the kernel: %lf microseconds\n", (double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000);
  runtime=(double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000;

  if(argc>=3){
    print_data_1d(n,r,argv[2],1);
    print_data_1d(n,y,argv[2],1);
  }
  
  if(argc>=4) writeOVRData(argv[3],runtime,0);
  if(argc>=5) writeFPRData(argv[4],detectCounter,0);

  if(detectCounter)
    printf("\nINFO: Soft error detected\n");
  else
    printf("\nINFO: No Soft errors detected\n");

  /* Be clean. */
  free(r);
  free(y);

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif  

  return 0;
}

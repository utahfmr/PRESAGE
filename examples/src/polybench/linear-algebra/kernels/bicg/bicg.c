/**
 * This version is stamped on Apr. 14, 2015
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* bicg.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>


/* Presage specific headers*/
#include "Utility.h"
#include "PresageRT.h"

/* Include benchmark-specific header. */
#include "bicg.h"

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
void init_array (int m, int n,double *A,double *r,double *p){
  int i, j;
  srand(0);
  for (i = 0; i < m; i++)
    p[i] = (double) rand(); //(i % m) / m;
  for (i = 0; i < n; i++) {
    r[i] = (double) rand(); //(i % n) / n;
    for (j = 0; j < m; j++)
      A[i*m+j] = (double) rand(); //(i*(j+1) % n)/n;
  }
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_bicg(int m, int n,double *A,double *s,double *q,double *p,double *r)
{
  int i, j;

#pragma scop
  for (i = 0; i < m; i++)
    s[i] = 0;
  for (i = 0; i < n; i++){
      q[i] = 0.0;
      for (j = 0; j < m; j++){
	  s[j] = s[j] + r[i] * A[i*m+j];
	  q[i] = q[i] + A[i*m+j] * p[j];
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

  dimcount=2;
  psgdim[0]=n;
  psgdim[1]=m;
  dim0=n;
  dim1=m;

  /* Variable declaration/allocation. */
  double *A=(double*)malloc(n*m*sizeof(double));
  double *s=(double*)malloc(m*sizeof(double));
  double *q=(double*)malloc(n*sizeof(double));
  double *p=(double*)malloc(m*sizeof(double));
  double *r=(double*)malloc(n*sizeof(double));  

  psgProtect(A,(long long) &A[0],(long long) &A[(n*m)-1]);
  psgProtect(s,(long long) &s[0],(long long) &s[m-1]);  
  psgProtect(q,(long long) &q[0],(long long) &q[n-1]);
  psgProtect(p,(long long) &p[0],(long long) &p[m-1]);
  psgProtect(r,(long long) &r[0],(long long) &r[n-1]);  
  
  /* Initialize array(s). */
  init_array (m,n,A,r,p);

  /* Run kernel. */
  gettimeofday(&start, NULL);        
  kernel_bicg (m,n,A,s,q,p,r);
  gettimeofday(&end, NULL);
  printf("Total time taken to execute the kernel: %lf microseconds\n", (double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000);
  runtime=(double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000;

  if(argc==4){
    print_data_2d(n,m,A,argv[3],1);
    print_data_1d(n,q,argv[3],0);
    print_data_1d(m,p,argv[3],0);
    print_data_1d(n,r,argv[3],0);
  }
  
  if(argc>=5) writeOVRData(argv[4],runtime,0);
  if(argc>=6) writeFPRData(argv[5],detectCounter,0);

  if(detectCounter)
    printf("\nINFO: Soft error detected\n");
  else
    printf("\nINFO: No Soft errors detected\n");    

  /* Be clean. */
  free(A);
  free(s);
  free(q);
  free(p);
  free(r);

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif    
  
  return 0;
}

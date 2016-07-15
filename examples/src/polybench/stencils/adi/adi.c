/**
 * This version is stamped on Apr. 14, 2015
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* adi.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <sys/time.h>


/* Presage specific headers*/
#include "Utility.h"
#include "PresageRT.h"

/* Include benchmark-specific header. */
#include "adi.h"

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
void init_array (int n,double *u)
{
  int i, j;
  srand(0);
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      {
    	u[i*n+j] =  (double) rand(); //(i + n-j) / n;
      }
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
/* Based on a Fortran code fragment from Figure 5 of
 * "Automatic Data and Computation Decomposition on Distributed Memory Parallel Computers"
 * by Peizong Lee and Zvi Meir Kedem, TOPLAS, 2002
 */
static
void kernel_adi(int tsteps, int n,double *u,double *v,double *p,double *q)
{
  int t, i, j;
  double DX, DY, DT;
  double B1, B2;
  double mul1, mul2;
  double a, b, c, d, e, f;

#pragma scop

  DX = 1.0/(double)n;
  DY = 1.0/(double)n;
  DT = 1.0/(double)tsteps;
  B1 = 2.0;
  B2 = 1.0;
  mul1 = B1 * DT / (DX * DX);
  mul2 = B2 * DT / (DY * DY);

  a = -mul1 /  2.0;
  b = 1.0+mul1;
  c = a;
  d = -mul2 / 2.0;
  e = 1.0+mul2;
  f = d;

 for (t=1; t<=tsteps; t++) {
    //Column Sweep
    for (i=1; i<n-1; i++) {
      v[i] = 1.0;
      p[i*n] = 0.0;
      q[i*n] = v[i];
      for (j=1; j<n-1; j++) {
        p[i*n+j] = -c / (a*p[i*n+(j-1)]+b);
        q[i*n+j] = (-d*u[j*n+(i-1)]+(1.0+2.0*d)*u[j*n+i] - f*u[j*n+(i+1)]-a*q[i*n+(j-1)])/(a*p[i*n+(j-1)]+b);
      }
      
      v[n*(n-1)+i] = 1.0;
      for (j=n-2; j>=1; j--) {
        v[j*n+i] = p[i*n+j] * v[(j+1)*n+i] + q[i*n+j];
      }
    }
    //Row Sweep
    for (i=1; i<n-1; i++) {
      u[i*n] = 1.0;
      p[i*n] = 0.0;
      q[i*n] = u[i*n];
      for (j=1; j<n-1; j++) {
        p[i*n+j] = -f / (d*p[i*n+(j-1)]+e);
        q[i*n+j] = (-a*v[(i-1)*n+j]+(1.0+2.0*a)*v[i*n+j] - c*v[(i+1)*n+j]-d*q[i*n+(j-1)])/(d*p[i*n+(j-1)]+e);
      }
      u[i*n+(n-1)] = 1.0;
      for (j=n-2; j>=1; j--) {
        u[i*n+j] = p[i*n+j] * u[i*n+(j+1)] + q[i*n+j];
      }
    }
  }
#pragma endscop
}


int main(int argc, char** argv)
{
  double runtime=0.0;
  struct timeval start, end;
  /* Retrieve problem size. */
  if(argc<3){
	  printf("\nINFO: Insufficient arguments!\n\n");
  }
  
  int n = atoi(argv[1]);
  int tsteps = atoi(argv[2]);
  
  dimcount=1;
  psgdim[0]=n;
  dim0=n;

  double *u=(double*)malloc(n*n*sizeof(double));
  double *v=(double*)malloc(n*n*sizeof(double));
  double *p=(double*)malloc(n*n*sizeof(double));
  double *q=(double*)malloc(n*n*sizeof(double));

  psgProtect(u,(long long) &u[0],(long long) &u[(n*n)-1]);
  psgProtect(v,(long long) &v[0],(long long) &v[(n*n)-1]);
  psgProtect(p,(long long) &p[0],(long long) &p[(n*n)-1]);
  psgProtect(q,(long long) &q[0],(long long) &q[(n*n)-1]);

    /* Initialize array(s). */
  init_array (n,u);
  init_array (n,v);
  init_array (n,p);
  init_array (n,q);

  gettimeofday(&start, NULL);
  kernel_adi (tsteps,n,u,v,p,q);
  gettimeofday(&end, NULL);
  printf("Total time taken to execute the kernel: %lf seconds\n", (double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000);
  runtime=(double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000;

  if(argc==4){
    print_data_2d(n,n,u,argv[3],1);
    print_data_2d(n,n,v,argv[3],0);
    print_data_2d(n,n,p,argv[3],0);
    print_data_2d(n,n,q,argv[3],0);
  }

  if(argc>=5) writeOVRData(argv[4],runtime,0);
  if(argc>=6) writeFPRData(argv[5],detectCounter,0);

  if(detectCounter)
   	printf("\nINFO: Soft error detected\n");
  else
   	printf("\nINFO: No Soft errors detected\n");

free(u);
free(v);
free(p);
free(q);

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif

  return 0;
}

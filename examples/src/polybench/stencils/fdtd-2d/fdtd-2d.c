/**
 * This version is stamped on Apr. 14, 2015
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* fdtd-2d.c: this file is part of PolyBench/C */

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
#include "fdtd-2d.h"

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
void init_array (int tmax,int nx,int ny,double *ex,double *ey,double *hz,double *_fict_)
{
  int i, j;
  srand(0);
  for (i = 0; i < tmax; i++)
    _fict_[i] = (double) rand(); //i;
  for (i = 0; i < nx; i++)
	  for (j = 0; j < ny; j++)
      {
		  ex[i*ny+j] = (double) rand(); //i*(j+1)) / nx;
		  ey[i*ny+j] = (double) rand(); //i*(j+2)) / ny;
		  hz[i*ny+j] = (double) rand(); //i*(j+3)) / nx;
      }
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_fdtd_2d(int tmax,int nx,int ny,double *ex,double *ey,double *hz,double *_fict_){
  int t, i, j;
#pragma scop
  for(t = 0; t < tmax; t++){
      for (j = 0; j < ny; j++)
    	  ey[j] = _fict_[t];

      for (i = 1; i < nx; i++)
    	  for (j = 0; j < ny; j++)
    		  ey[i*ny+j] = ey[i*ny+j] - 0.5*(hz[i*ny+j]-hz[(i-1)*ny+j]);

      for (i = 0; i < nx; i++)
    	  for (j = 1; j < ny; j++)
    		  ex[i*ny+j] = ex[i*ny+j] - 0.5*(hz[i*ny+j]-hz[i*ny+(j-1)]);

      for (i = 0; i < nx - 1; i++)
    	  for (j = 0; j < ny - 1; j++)
    		  hz[i*ny+j] = hz[i*ny+j] - 0.7*  (ex[i*ny+(j+1)] - ex[i*ny+j] +
    				  ey[(i+1)*ny+j] - ey[i*ny+j]);
  }
#pragma endscop
}

int main(int argc, char** argv)
{
  double runtime=0.0;
  struct timeval start, end;
  /* Retrieve problem size. */
  if(argc<4){
	  printf("\nERROR: Insufficient Arguments!\n\n");
	  exit(-1);
  }  

  int nx=atoi(argv[1]);
  int ny=atoi(argv[2]);
  int tmax=atoi(argv[3]);

  dimcount=3;
  psgdim[0]=nx;
  psgdim[1]=ny;
  psgdim[2]=tmax;
  dim0=nx;
  dim1=ny;
  dim2=tmax;

  double *ex=(double*)malloc(nx*ny*sizeof(double));
  double *ey=(double*)malloc(nx*ny*sizeof(double));
  double *hz=(double*)malloc(nx*ny*sizeof(double));
  double *_fict_=(double*)malloc(tmax*sizeof(double));

  psgProtect(ex,(long long) &ex[0],(long long) &ex[(nx*ny)-1]);
  psgProtect(ey,(long long) &ey[0],(long long) &ey[(nx*ny)-1]);
  psgProtect(hz,(long long) &hz[0],(long long) &hz[(nx*ny)-1]);
  psgProtect(_fict_,(long long) &_fict_[0],(long long) &_fict_[tmax-1]);

  /* Initialize array(s). */
  init_array (tmax, nx, ny,ex,ey,hz,_fict_);

    /* Run kernel. */
  gettimeofday(&start, NULL);
  kernel_fdtd_2d(tmax, nx, ny,ex,ey,hz,_fict_);
  gettimeofday(&end, NULL);
  printf("Total time taken to execute the kernel: %lf seconds\n", (double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000);
  runtime=(double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000;

  if(argc==5){
	print_data_2d(nx,ny,ex,argv[4],1);
	print_data_2d(nx,ny,ey,argv[4],0);
	print_data_2d(nx,ny,hz,argv[4],0);
	print_data_1d(tmax,_fict_,argv[4],0);
  }

  if(argc>=6) writeOVRData(argv[5],runtime,0);
  if(argc>=7) writeFPRData(argv[6],detectCounter,0);

  if(detectCounter)
   	printf("\nINFO: Soft error detected\n");
  else
   	printf("\nINFO: No Soft errors detected\n");

  /* Be clean. */
  free(ex);
  free(ey);
  free(hz);
  free(_fict_);

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif
  return 0;
}


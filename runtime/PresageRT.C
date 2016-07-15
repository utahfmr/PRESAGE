#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>

#include "Utility.h"
#include "PresageRT.h"

#define MAX_GEP_COUNT 512
#define MAX_UNIQ_VAL_COUNT 20
#define MAX_DIM_SIZE 10

int init_flag=0;
int dimcount=0;
int psgdim[MAX_DIM_SIZE];
long long prf_data[MAX_GEP_COUNT][MAX_UNIQ_VAL_COUNT];
long long dim0=0;
long long dim1=0;
long long dim2=0;

void psgProtect(double *a, long long start_addr, long long end_addr){
	return;
}

void initPrfData(void){
	unsigned i,j;
	for(i=0;i<MAX_GEP_COUNT;i++){
		for(j=0;j<MAX_UNIQ_VAL_COUNT;j++){
			prf_data[i][j]=0x7FFFFFFFFFFFFFFF;
		}
	}
}

void psgRelid(long long gepidx, long long arelidx, long long crelidx){
	if(arelidx!=crelidx)
		printf("\nINFO: Gep id %lld has actual rel id is %lld where as computed rel id is %lld",gepidx,arelidx,crelidx);
}

void psgProfile(long long gepidx, long long relidx, const char* fname){
  unsigned i;

  FILE *fp;

  if(!init_flag) {
	  initPrfData();
	  init_flag=1;
  }

  if(gepidx >= MAX_GEP_COUNT) return;

  for(i=0;i<MAX_UNIQ_VAL_COUNT;i++){
	  if(prf_data[gepidx][i]==relidx) return;
	  else if(prf_data[gepidx][i]==0x7FFFFFFFFFFFFFFF) break;
  }

  unsigned max_uniq_flag=0;
  if(i<MAX_UNIQ_VAL_COUNT){
	  if(prf_data[gepidx][i]==0x7FFFFFFFFFFFFFFF)
		  prf_data[gepidx][i]=relidx;
  } else if(i==MAX_UNIQ_VAL_COUNT){
	  max_uniq_flag=1;
  }

  fp = fopen(fname,"a");
  if(max_uniq_flag){
	  fprintf(fp,"MAX_UNIQUE_COUNT_EXCEEDED\n");
  } else{
	  fprintf(fp,"%u:%lld ",i,prf_data[gepidx][i]);
	  if(dimcount>0) fprintf(fp,"%u ",dimcount);
	  else fprintf(fp,"%u\n",dimcount);
	  for(i=0;i<dimcount;i++){
		  if(i<dimcount-1)
			  fprintf(fp,"%d ",psgdim[i]);
		  else if(i==dimcount-1)
			  fprintf(fp,"%d\n",psgdim[i]);
	  }
  }

  fclose(fp);
}

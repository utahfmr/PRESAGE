#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// top level function which performs a bitflip
int flipBit(void* data,
		   unsigned bytesz){
  srand(time(NULL));
  long long dest = 0;
  long long bitPos = -1;
  
  //~ bitPos=rand()%bytesz;
  bitPos=6;
  // Copy source data to a 64-bit integer
  memcpy((void*)&dest,data,bytesz);

  if ((dest>>bitPos)&0x1){
    dest = dest & (~((long long)0x1 << (bitPos)));
  } else{
    dest = dest |  ((long long) 0x1 << (bitPos));
  }

  // Copy back the data with a random bit flipped into the source
  memcpy(data,(void*)&dest,bytesz);

  return bitPos; // A single-bit error successfully injected!!
}


void printarray(double *A, int n){
	printf("\n[ ");
	for(int i=0;i<n;i++)
		printf("% lf ",A[i]);
	printf("]\n ");
}

void writeValue(const char* fname, void *dataptr){
	long long data=(long long) *((long long*)dataptr);
	FILE *fp;
	fp = fopen(fname,"a");
	fprintf(fp,"%lld,\n",data);
	fclose(fp);	
}

void initarray(double *A, int n){
	for(int i=0;i<n;i++)
		A[i]=0.0;
}

void ex3(double *A, int n, int ch){   
  srand(time(NULL));
  double* addr=A;   
  int tidx=n/2;
  for(int i=1;i<n;i++){
	if(ch==1 && tidx==i) {
		flipBit((void*)&i,4);		
	}
	int id=2*i-2;
	if(ch==2 && tidx==i){
		 flipBit((void*)&id,4);
	 }
	addr=&A[i];
	if(ch==3 && tidx==i){
		 flipBit((void*)&addr,8);
	}
	if(ch==1) writeValue("ex2_var_addr_fi_1.csv",(void*)&addr);
	if(ch==2) writeValue("ex2_var_addr_fi_2.csv",(void*)&addr);
	if(ch==3) writeValue("ex2_var_addr_fi_3.csv",(void*)&addr);
	if(ch==0) writeValue("ex2_var_addr.csv",(void*)&addr);	
	*addr=i;

  }	
}


int main(int argc, char* argv[]){
	int n=atoi(argv[1]);
	double *A=(double *)malloc(2*n*sizeof(double));
	initarray(A,2*n);
	ex3(A,n,0);
	ex3(A,n,1);	
	ex3(A,n,2);	
	ex3(A,n,3);	
	free(A);
	return 0;
}



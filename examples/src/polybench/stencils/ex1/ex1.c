#include <stdio.h>
#include <stdlib.h>

void printarray(double *A, int n){
	printf("\n[ ");
	for(int i=0;i<n;i++)
		printf("% lf ",A[i]);
	printf("]\n ");
}

void ex1(double *A, int n){   
  for(int i=1;i<n;i++){
	A[2*i-2]=i;
  }	
}

int main(int argc, char* argv[]){
	int n=atoi(argv[1]);
	double *A=(double *)malloc(2*n*sizeof(double));
	for(int i=0;i<2*n;i++){
		A[i]=0.0;
	}
	ex1(A,n);
	printarray(A,n);
	free(A);
	return 0;
}



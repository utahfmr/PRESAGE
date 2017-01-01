#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <sys/time.h>

/* presage specific headers */
#include "Utility.h"
#include "PresageRT.h"

/*Benchmark specific header*/
#include "util.h"



double t_start, t_end;

extern long dim0;
extern long dim1;
extern long dim2;
extern int dimcount;
extern int psgdim[];
extern long long detectCounter;

#ifdef INST
extern int printFaultSitesData(void);
extern int printFaultInjectionData(void);
#endif

/* Array initialization */
static
void init_array( int n, double *a )
{
	int i,j ;
	for (j=0; j<n; j++) {
		a[j] = ((double)j)/n ;
	}
}

static 
void func(int n, double *a, double *b)
{
	int t,i,j ;
	#pragma scop
	for (t=0; t<n; t++) 
	{
		for (i=2; i<n-1; i++)
		{
			b[i] = 0.33333 * (a[i-1] + a[i] + a[i + 1]);
		}
		for (j=2; j<n-1; j++)
		{
			a[j] = b[j];
		}
	}
	#pragma endscop
}

int main(int argc, char** argv)
{
   if(argc<3) {
		printf("\nInfo: Insufficient arguments!\n\n");
	}

	int n = atoi(argv[1]);
	int tsteps = atoi(argv[2]);
	
	dimcount=1;
	psgdim[0]=n;
	dim0=n;

	double *a = (double*)malloc(n*sizeof(double));
	double *b = (double*)malloc(n*sizeof(double));

	psgProtect(a, (long long) &a[0], (long long) &a[n-1]);
	psgProtect(b, (long long) &b[0], (long long) &b[n-1]);

	/* Initialize array */
	init_array(n,a);
	init_array(n,b);

	//gettimeofday(&start, NULL);
	func(n, a, b);
	//gettimeofday(&end, NULL);
	
	if(argc==4) {
		print_data_1d(n,a,argv[3],1);
		print_data_1d(n,b,argv[3],0);
	}

	if(detectCounter)
		printf("\nInfo: Soft error detected\n");
	else
		printf("\nInfo: No Soft Errors detected\n");

	free(a);
	free(b);

	#ifdef INST
		printFaultSitesData();
		printFaultInjectionData();
	#endif
	return 0 ;
}

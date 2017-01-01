#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <sys/time.h>

/* presage specific headers */
#include "Utility.h"
#include "PresageRT.h"

double t_start, t_end ;

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

/* Array Initialization */
static 
void init_array( double *a )
{
	int i,j,k ;
	for (i=0; i<64; i++)
	{
		for (j=0; j<64; j++)
		{
			for (k=0; k<64; k++)
			{
				a[i*64 + j] += (i+k+1)*(k+j+1);
			}
		}
	}
}


static 
void func( double *a )
{
	int i,j,k;
	#pragma scop
		for (k=0; k<64; k++)
		{
			for (j=k+1; j<64; j++)
			{
				a[k*64 + j] = a[k*64 + j]/a[k*64 + k];
			}
			for (i=k+1; i<64; i++)
			{
				for (j=k+1; j<64; j++)
				{
					a[i*64 + j] = a[i*64 + j] - a[i*64 + k]*a[k*64 + j];
				}
			}
		}
	#pragma endscop
}

int main(int argc, char** argv)
{
	if(argc < 3)
	{
		printf("\nInfo: Insufficient arguments!\n\n");
	}

	double *a = (double*)malloc(64*64*sizeof(double));
	psgProtect(a, (long long) &a[0], (long long) &a[64*64-1]);

	/* Initialize array */
	init_array(a);

	func(a);

	if(argc==4)
	{
		print_data_2d(64,64,a,argv[3],1);
	}

	if(detectCounter)
		printf("\nInfo: Soft error detected\n");
	else
		printf("\nInfo: No Soft Errors detected\n");

	free(a);

	#ifdef INST
		printFaultSitesData();
		printFaultInjectionData();
	#endif
	
}

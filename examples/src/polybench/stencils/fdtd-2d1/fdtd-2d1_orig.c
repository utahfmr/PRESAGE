#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <sys/time.h>
#include <assert.h>

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
void init_array( double *ex, double *ey, double *hz )
{
	int i, j;
	for (i=0; i<65; i++)
	{
		for (j=0; j<64; j++)
		{
			ey[i*64 + j] = 0;
		}
	}
	
	for (i=0; i<64; i++)
	{
		for (j=0; j<65; j++)
		{
			ex[i*65 + j] = 0;
		}
	}

	for (j=0; j<64; j++)
	{
		ey[j] = ((double)j)/64 ;
	}

	for (i=0; i<64; i++)
	{
		for (j=0; j<64; j++)
		{
			hz[i*64 + j] = 0;
		}
	}
}

static 
void func( double *ex, double *ey, double *hz )
{
	int t, i, j;

	#pragma scop
		for (t=0; t<64; t++)
		{
			for (j=0; j<64; j++)
				ey[j] = t;
			for (i=1; i<64; i++)
			{
				for (j=0; j<64; j++)
					ey[i*64 + j] = ey[i*64 + j] - 0.5*(hz[i*64 +j] - hz[(i-1)*64 + j]);
			}
			for (i=0; i<64; i++)
			{
				for (j=1; j<64; j++)
					ex[i*65 + j] = ex[i*65 + j] - 0.5*(hz[i*64 +j] - hz[(i-1)*64 + j]);
			}
			for (i=0; i<64; i++)
			{
				for (j=0; j<64; j++)
					hz[i*64 + j] = hz[i*64 + j] - 0.7*(ex[i*65 + j+1] - ex[i*65 + j] + ey[(i+1)*64 + j] - ey[i*64 + j]) ;
			}
		}
	#pragma endscop
}

int main(int argc, char** argv)
{
	if(argc<3)
	{
		printf("\nInfo: Insufficient arguments!\n\n");
	}

	double *ex = (double*)malloc(64*65*sizeof(double));
	double *ey = (double*)malloc(65*64*sizeof(double));
	double *hz = (double*)malloc(64*64*sizeof(double));

	psgProtect(ex, (long long) &ex[0], (long long) &ex[64*65 - 1]);
	psgProtect(ey, (long long) &ey[0], (long long) &ey[65*64 - 1]);
	psgProtect(hz, (long long) &hz[0], (long long) &hz[64*64 - 1]);

	/* Initialize array */
	init_array(ex,ey,hz);

	func(ex,ey,hz);

	if(argc==4)
	{
		print_data_2d(64,65,ex,argv[3],1);
		print_data_2d(65,64,ey,argv[3],0);
		print_data_2d(64,64,hz,argv[3],0);
	}

	if(detectCounter)
		printf("\nInfo: Soft error detected\n");
	else
		printf("\nInfo: No Soft Errors detected\n");

	free(ex);
	free(ey);
	free(hz);

	#ifdef INST
		printFaultSitesData();
		printFaultInjectionData();
	#endif
}

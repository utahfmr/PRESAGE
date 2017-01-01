#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <assert.h>
#include <unistd.h>

//#include <omp.h>

#ifdef PERFCTR
#include <papi.h>
#include "papi_defs.h"
#endif

#include "decls.h"

#include "util.h"

/* Presage specific headers */
#include "Utility.h"
#include "PresageRT.h"

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


void func() {
 #pragma scop
     for (int t = 0; t < T; t++) {
 
         for (int i1=0; i1<N; i1++) {
             for (int i2 = 1; i2 < N; i2++) {
                 //X[i1][i2] = X[i1][i2] - X[i1][i2-1] * A[i1][i2] / B[i1][i2-1];
                 X[i1*N + i2] = X[i1*N + i2] - X[i1*N + i2-1] * A[i1*N + i2] / B[i1*N + i2-1];
                 //B[i1][i2] = B[i1][i2] - A[i1][i2] * A[i1][i2] / B[i1][i2-1];
                 B[i1*N + i2] = B[i1*N + i2] - A[i1*N + i2] * A[i1*N + i2] / B[i1*N + i2-1];
             }
         }
 
         for (int i1=1; i1<N; i1++) {
             for (int i2 = 0; i2 < N; i2++) {
                 //X[i1][i2] = X[i1][i2] - X[i1-1][i2] * A[i1][i2] / B[i1-1][i2];
                 X[i1*N + i2] = X[i1*N + i2] - X[(i1-1)*N + i2] * A[i1*N + i2] / B[(i1-1)*N + i2];
                 //B[i1][i2] = B[i1][i2] - A[i1][i2] * A[i1][i2] / B[i1-1][i2];
                 B[i1*N + i2] = B[i1*N + i2] - A[i1*N + i2] * A[i1*N + i2] / B[(i1-1)*N + i2];
             }
         }
     }
 #pragma endscop
  
}

int main(int argc, char *argv[])
{
	if(argc<3) {
		printf("\nERROR: Insufficient arguments!\n");
		exit(-1);
	}
    int i, j, k, l, m, n, t;

    int i1, i2;

    double t_start, t_end;
	FILE *fp ;
	/* presage detection */
	n = atoi(argv[1]);
	int tsteps = atoi(argv[2]);
	dimcount=1;
	psgdim[0]=n;
	dim0=n;

    init_array();

#ifdef PERFCTR
    PERF_INIT; 
#endif

    IF_TIME(t_start = rtclock());

 #pragma scop
	func();
//     for (t = 0; t < T; t++) {
// 
//         for (i1=0; i1<N; i1++) {
//             for (i2 = 1; i2 < N; i2++) {
//                 X[i1][i2] = X[i1][i2] - X[i1][i2-1] * A[i1][i2] / B[i1][i2-1];
//                 B[i1][i2] = B[i1][i2] - A[i1][i2] * A[i1][i2] / B[i1][i2-1];
//             }
//         }
// 
//         for (i1=1; i1<N; i1++) {
//             for (i2 = 0; i2 < N; i2++) {
//                 X[i1][i2] = X[i1][i2] - X[i1-1][i2] * A[i1][i2] / B[i1-1][i2];
//                 B[i1][i2] = B[i1][i2] - A[i1][i2] * A[i1][i2] / B[i1-1][i2];
//             }
//         }
//     }
 #pragma endscop

    IF_TIME(t_end = rtclock());
    IF_TIME(fprintf(stderr, "%0.6lfs\n", t_end - t_start));

#ifdef PERFCTR
    PERF_EXIT; 
#endif

   // if (fopen(".test", "r")) {
   //     print_array();
   // }
	//--- write the data in the file ---
	fp=fopen(argv[3],"w");
	for(int i=0; i<N; i++) {
		for(int j=0; j<N; j++) {
			//fprintf(fp, "%lf\n", B[i][j]);
			fprintf(fp, "%lf\n", B[i*N + j]);
		}
	}
	fclose(fp);
	free(n);
#ifdef INST
	printFaultSitesData();
	printFaultInjectionData();
#endif
    return 0;
}

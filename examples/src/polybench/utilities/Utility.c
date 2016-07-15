#include "Utility.h"

int file_exists(const char* fname){
	return (access(fname, F_OK ) != -1 );
}

void writeFPRData(const char* fname, long long fpstatus, int wr_flag){
  FILE *fp;
  if(wr_flag)
    fp=fopen(fname,"w");
  else
    fp=fopen(fname,"a");
  fprintf(fp,"%lld,\n",fpstatus);
  fclose(fp);
}

void writeOVRData(const char* fname, double runtime, int wr_flag){
  FILE *fp;
  if(wr_flag)
    fp=fopen(fname,"w");
  else
    fp=fopen(fname,"a");
  fprintf(fp,"%lf,\n",runtime);
  fclose(fp);
}

void print_data_3d(int nx, int ny, int nz, double *a, const char* fname, int wr_mode){
  FILE *fp;
  if(wr_mode)
	  fp=fopen(fname, "w");
  else
	  fp=fopen(fname, "a");
  int i, j, k;
  for (i = 0; i < nx; i++)
    for (j = 0; j < ny; j++)
		for (k = 0; k < nz; k++)
		{
			fprintf(fp,"%lf\n",a[(i*ny*nz)+(j*nz)+k]);
		}
  fclose(fp);
}

void print_data_2d(int nx, int ny, double *a, const char* fname, int wr_mode){
  FILE *fp;
  if(wr_mode)
	  fp=fopen(fname, "w");
  else
	  fp=fopen(fname, "a");
  int i, j;
  for (i = 0; i < nx; i++)
    for (j = 0; j < ny; j++)
      {
    	fprintf(fp,"%lf\n",a[i*ny+j]);
      }
  fclose(fp);
}

void print_data_1d(int n,double *a, const char* fname, int wr_mode){
  FILE *fp;
  if(wr_mode)
  	  fp=fopen(fname, "w");
    else
  	  fp=fopen(fname, "a");
  int i, j;
  for (i = 0; i < n; i++)
      fprintf (fp, "%lf\n", a[i]);
  fclose(fp);
}

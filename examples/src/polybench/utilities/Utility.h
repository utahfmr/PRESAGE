#pragma once

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <string.h>
#include <assert.h>
#include <sys/time.h>

void writeFPRData(const char*,long long,int);
void writeOVRData(const char*,double,int);
void print_data_3d(int,int,int,double*,const char*,int);
void print_data_2d(int,int,double*,const char*,int);
void print_data_1d(int,double*,const char*,int);
int file_exists(const char*);

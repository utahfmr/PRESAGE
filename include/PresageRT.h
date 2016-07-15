#pragma once

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>

#include "Utility.h"

#ifdef __cplusplus
extern "C" void psgProtect(double*, long long,long long);
extern "C" void psgProfile(long long, const char*);
#else
void psgProtect(double*, long long,long long);
void psgProfile(long long, const char*);
#endif




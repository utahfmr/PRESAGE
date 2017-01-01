; ModuleID = 'jac1_inst.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

$_Z5getFDPKcS0_ = comdat any

$_Z14updateFIParamsv = comdat any

$_Z9checkMaskPvi = comdat any

$_Z13matchDynFSIdxv = comdat any

$_Z7flipBitPvj8DataType6FIAlgo = comdat any

$_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_ = comdat any

$_Z9getBitPosj8DataType6FIAlgo = comdat any

$_Z12getBitPosCBRj = comdat any

$_Z12getBitPosABR8DataType = comdat any

$_Z14getIntervalIdxx = comdat any

$_Z15updateTimeStampv = comdat any

$_Z18getStrFieldByIndexPcPKci = comdat any

$_Z13processParamsPKcS0_ = comdat any

$_Z11updateFSIdxv = comdat any

$_Z11file_existsPKc = comdat any

$_Z11printParamsv = comdat any

$_Z11checkParamsv = comdat any

$_Z12gen64bitRandv = comdat any

$_ZZ18getStrFieldByIndexPcPKciE4temp = comdat any

@dynFSCount = global i64 0, align 8
@detectCounter = global i64 0, align 8
@dynFSCounter = global i64 0, align 8
@intvsz = global i64 0, align 8
@intvCount = global i64 0, align 8
@dynFSIdx = global i64* null, align 8
@fsIntTy1 = global i64 0, align 8
@fsIntTy8 = global i64 0, align 8
@fsIntTy16 = global i64 0, align 8
@fsIntTy32 = global i64 0, align 8
@fsIntTy64 = global i64 0, align 8
@fsFloatTy = global i64 0, align 8
@fsDoubleTy = global i64 0, align 8
@fiIntTy1 = global i64 0, align 8
@fiIntTy8 = global i64 0, align 8
@fiIntTy16 = global i64 0, align 8
@fiIntTy32 = global i64 0, align 8
@fiIntTy64 = global i64 0, align 8
@fiFloatTy = global i64 0, align 8
@fiDoubleTy = global i64 0, align 8
@fialg = global i32 3, align 4
@fibr = global i32 9, align 4
@fid = global i32 2, align 4
@ef = global i64 -1, align 8
@tf = global i64 -1, align 8
@fidatardflag = global i32 0, align 4
@bl = global i32 -1, align 4
@bu = global i32 -1, align 4
@pfs = global i32 -1, align 4
@fiParams = global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), align 8
@.str = private unnamed_addr constant [6 x i8] c"fi.in\00", align 1
@fiStat = global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"fi.csv\00", align 1
@fiCount = global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"fi.out\00", align 1
@fsStat = global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"fs.out\00", align 1
@execKey = global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"fault site count:%lld\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"\0A----------------Fault Site Statistics------------------\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"\0ATotal # of fault sites enumerated : %lld\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"\0AFurther sub-categorization of fault sites below:\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"\0ATotal # of Data fault sites IntTy1 : %lld\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"\0ATotal # of Data fault sites IntTy16 : %lld\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"\0ATotal # of Data fault sites IntTy32 : %lld\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"\0ATotal # of Data fault sites IntTy64 : %lld\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"\0ATotal # of Data fault sites FloatTy : %lld\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"\0ATotal # of Data fault sites DoubleTy : %lld\00", align 1
@str = private unnamed_addr constant [62 x i8] c"\0A------------------------------------------------------------\00"
@.str.20 = private unnamed_addr constant [34 x i8] c"\0AError:Coudn't find the file: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"fault injection count:%lld\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"\0Atimestamp:%lu\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"\0Aerror detection count:%lld\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"Time;\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"%ld;\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"%s;\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"%d;\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"%c;\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"%lld;\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"%f;\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"%lf;\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str.74 = private unnamed_addr constant [44 x i8] c"\0AError: Invalid value provided for FI Algo!\00"
@switch.table = private unnamed_addr constant [5 x i32] [i32 7, i32 15, i32 31, i32 63, i32 31]
@.str.21 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@str.72 = private unnamed_addr constant [42 x i8] c"\0AError:Coudn't find fi param file \22fi.in\22\00"
@.str.23 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@str.71 = private unnamed_addr constant [47 x i8] c"\0AError:memory allocation failed for dynFSIdx!!\00"
@.str.25 = private unnamed_addr constant [11 x i8] c"Instr_Name\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Original_Value\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Corrupted_Value\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"Bit_Position\00", align 1
@.str.51 = private unnamed_addr constant [57 x i8] c"fialg!=FI_ERROR && \22Invalid fault injection algorithm!!\22\00", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"/home/arnabd/apps/VULFI//runtime/Corrupt.C\00", align 1
@__PRETTY_FUNCTION__._Z11checkParamsv = private unnamed_addr constant [19 x i8] c"void checkParams()\00", align 1
@.str.53 = private unnamed_addr constant [43 x i8] c"fibr!=FIBR_ERROR && \22Invalid byte range!!\22\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"fid!=FID_ERROR && \22Invalid byte direction!!\22\00", align 1
@.str.55 = private unnamed_addr constant [71 x i8] c"((bu>=bl && bu<=63 && bl >=0)||fialg!=FI_ABR) && \22Invalid bit range!!\22\00", align 1
@.str.56 = private unnamed_addr constant [62 x i8] c"ef<=tf&&ef>0&&tf>0 && \22Invalid fault injection probability!!\22\00", align 1
@.str.57 = private unnamed_addr constant [51 x i8] c"(pfs==0||pfs==1) && \22Invalid value for pfs flag!!\22\00", align 1
@str.73 = private unnamed_addr constant [47 x i8] c"\0AError:memory allocation failed for dynFSIdx!!\00"
@.str.29 = private unnamed_addr constant [4 x i8] c"fia\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"CBR\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"ABR\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"MSK\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"fib\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"fid\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"LSB\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"MSB\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"fiu\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"fil\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"pn\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"pfs\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@_ZZ18getStrFieldByIndexPcPKciE4temp = linkonce_odr global [1024 x i8] zeroinitializer, comdat, align 16
@.str.15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1.16 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2.17 = private unnamed_addr constant [7 x i8] c"%lld,\0A\00", align 1
@.str.3.18 = private unnamed_addr constant [6 x i8] c"%lf,\0A\00", align 1
@.str.4.19 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@init_flag = global i32 0, align 4
@dimcount = global i32 0, align 4
@psgdim = global [10 x i32] zeroinitializer, align 16
@prf_data = global [512 x [20 x i64]] zeroinitializer, align 16
@dim0 = global i64 0, align 8
@dim1 = global i64 0, align 8
@dim2 = global i64 0, align 8
@.str.22 = private unnamed_addr constant [78 x i8] c"\0AINFO: Gep id %lld has actual rel id is %lld where as computed rel id is %lld\00", align 1
@.str.1.23 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2.24 = private unnamed_addr constant [27 x i8] c"MAX_UNIQUE_COUNT_EXCEEDED\0A\00", align 1
@.str.3.25 = private unnamed_addr constant [9 x i8] c"%u:%lld \00", align 1
@.str.4.26 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.5.27 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.6.28 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7.29 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@a = common global [2000000 x double] zeroinitializer, align 16
@b = common global [2000000 x double] zeroinitializer, align 16
@t_start = common global double 0.000000e+00, align 8
@t_end = common global double 0.000000e+00, align 8
@.str.58 = private unnamed_addr constant [35 x i8] c"Error return from gettimeofday: %d\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1.59 = private unnamed_addr constant [5 x i8] c"%lf \00", align 1
@str.9 = private unnamed_addr constant [32 x i8] c"\0AINFO: Insufficient arguments!\0A\00"
@.str.4.60 = private unnamed_addr constant [6 x i8] c".test\00", align 1
@.str.5.61 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@str.8 = private unnamed_addr constant [27 x i8] c"\0AINFO: Soft error detected\00"
@str.62 = private unnamed_addr constant [31 x i8] c"\0AINFO: No Soft errors detected\00"

; Function Attrs: noinline nounwind uwtable
define i32 @printFaultSitesData() #0 {
  %1 = load i32, i32* @pfs, align 4, !tbaa !1
  switch i32 %1, label %2 [
    i32 -1, label %42
    i32 0, label %42
  ]

; <label>:2:                                      ; preds = %0
  %3 = load i64, i64* @fsIntTy1, align 8, !tbaa !5
  %4 = load i64, i64* @fsIntTy16, align 8, !tbaa !5
  %5 = add nsw i64 %4, %3
  %6 = load i64, i64* @fsIntTy32, align 8, !tbaa !5
  %7 = add nsw i64 %5, %6
  %8 = load i64, i64* @fsIntTy64, align 8, !tbaa !5
  %9 = add nsw i64 %7, %8
  %10 = load i64, i64* @fsFloatTy, align 8, !tbaa !5
  %11 = add nsw i64 %9, %10
  %12 = load i64, i64* @fsDoubleTy, align 8, !tbaa !5
  %13 = add nsw i64 %11, %12
  %14 = load i8*, i8** @fsStat, align 8, !tbaa !7
  %15 = tail call %struct._IO_FILE* @_Z5getFDPKcS0_(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %13)
  %17 = icmp eq %struct._IO_FILE* %15, null
  br i1 %17, label %20, label %18

; <label>:18:                                     ; preds = %2
  %19 = tail call i32 @fclose(%struct._IO_FILE* nonnull %15)
  br label %20

; <label>:20:                                     ; preds = %2, %18
  %21 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  %22 = icmp eq i64* %21, null
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %20
  %24 = bitcast i64* %21 to i8*
  tail call void @free(i8* %24) #2
  store i64* null, i64** @dynFSIdx, align 8, !tbaa !7
  br label %25

; <label>:25:                                     ; preds = %20, %23
  %26 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %27 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %13)
  %28 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %29 = load i64, i64* @fsIntTy1, align 8, !tbaa !5
  %30 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* @fsIntTy16, align 8, !tbaa !5
  %32 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* @fsIntTy32, align 8, !tbaa !5
  %34 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* @fsIntTy64, align 8, !tbaa !5
  %36 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* @fsFloatTy, align 8, !tbaa !5
  %38 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* @fsDoubleTy, align 8, !tbaa !5
  %40 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i64 %39)
  %41 = tail call i32 @puts(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @str, i64 0, i64 0))
  br label %42

; <label>:42:                                     ; preds = %0, %0, %25
  %43 = phi i32 [ 0, %25 ], [ -1, %0 ], [ -1, %0 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct._IO_FILE* @_Z5getFDPKcS0_(i8*, i8*) #0 comdat {
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i8* %0)
  tail call void @exit(i32 -1) #11
  unreachable

; <label>:7:                                      ; preds = %2
  ret %struct._IO_FILE* %3
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define i32 @printFaultInjectionData() #0 {
  %1 = load i32, i32* @pfs, align 4, !tbaa !1
  switch i32 %1, label %2 [
    i32 -1, label %29
    i32 1, label %29
  ]

; <label>:2:                                      ; preds = %0
  %3 = load i64, i64* @fiIntTy1, align 8, !tbaa !5
  %4 = load i64, i64* @fiIntTy16, align 8, !tbaa !5
  %5 = add nsw i64 %4, %3
  %6 = load i64, i64* @fiIntTy32, align 8, !tbaa !5
  %7 = add nsw i64 %5, %6
  %8 = load i64, i64* @fiIntTy64, align 8, !tbaa !5
  %9 = add nsw i64 %7, %8
  %10 = load i64, i64* @fiFloatTy, align 8, !tbaa !5
  %11 = add nsw i64 %9, %10
  %12 = load i64, i64* @fiDoubleTy, align 8, !tbaa !5
  %13 = add nsw i64 %11, %12
  %14 = load i8*, i8** @fiCount, align 8, !tbaa !7
  %15 = tail call %struct._IO_FILE* @_Z5getFDPKcS0_(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i64 %13)
  %17 = load i64, i64* @execKey, align 8, !tbaa !9
  %18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* @detectCounter, align 8, !tbaa !5
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i64 %19)
  %21 = icmp eq %struct._IO_FILE* %15, null
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %2
  %23 = tail call i32 @fclose(%struct._IO_FILE* nonnull %15)
  br label %24

; <label>:24:                                     ; preds = %2, %22
  %25 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  %26 = icmp eq i64* %25, null
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %24
  %28 = bitcast i64* %25 to i8*
  tail call void @free(i8* %28) #2
  store i64* null, i64** @dynFSIdx, align 8, !tbaa !7
  br label %29

; <label>:29:                                     ; preds = %27, %24, %0, %0
  %30 = phi i32 [ -1, %0 ], [ -1, %0 ], [ 0, %24 ], [ 0, %27 ]
  ret i32 %30
}

; Function Attrs: noinline uwtable
define i32 @_Z21injectSoftErrorIntTy1iPKci(i32, i8*, i32) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !1
  store i32 %2, i32* %5, align 4, !tbaa !1
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load i32, i32* %4, align 4, !tbaa !1
  store i32 %13, i32* %6, align 4, !tbaa !1
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 -1, i32* %7, align 4, !tbaa !1
  %15 = bitcast i32* %5 to i8*
  %16 = call i32 @_Z9checkMaskPvi(i8* %15, i32 4)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %34, label %18

; <label>:18:                                     ; preds = %11
  %19 = load i64, i64* @fsIntTy1, align 8, !tbaa !5
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @fsIntTy1, align 8, !tbaa !5
  %21 = load i32, i32* @pfs, align 4, !tbaa !1
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %34, label %23

; <label>:23:                                     ; preds = %18
  %24 = call i32 @_Z13matchDynFSIdxv()
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

; <label>:26:                                     ; preds = %23
  %27 = bitcast i32* %4 to i8*
  %28 = load i32, i32* @fialg, align 4, !tbaa !11
  %29 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* %27, i32 4, i32 0, i32 %28)
  store i32 %29, i32* %7, align 4, !tbaa !1
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %26
  %32 = load i64, i64* @fiIntTy1, align 8, !tbaa !5
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* @fiIntTy1, align 8, !tbaa !5
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %27, i8* nonnull %14, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %34

; <label>:34:                                     ; preds = %26, %31, %23, %18, %11
  %35 = load i32, i32* %4, align 4, !tbaa !1
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret i32 %35
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14updateFIParamsv() #4 comdat {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  store i8* null, i8** %1, align 8, !tbaa !7
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  store i64 0, i64* %2, align 8, !tbaa !9
  %5 = tail call i64 @time(i64* null) #2
  %6 = trunc i64 %5 to i32
  tail call void @srand(i32 %6) #2
  tail call void @_Z15updateTimeStampv()
  %7 = load i8*, i8** @fiParams, align 8, !tbaa !7
  %8 = tail call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %0
  %11 = call i64 @getline(i8** nonnull %1, i64* nonnull %2, %struct._IO_FILE* nonnull %8)
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %22, label %15

; <label>:13:                                     ; preds = %0
  %14 = tail call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.72, i64 0, i64 0))
  tail call void @exit(i32 -1) #11
  unreachable

; <label>:15:                                     ; preds = %10, %15
  %16 = load i8*, i8** %1, align 8, !tbaa !7
  %17 = call i8* @_Z18getStrFieldByIndexPcPKci(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 0)
  %18 = load i8*, i8** %1, align 8, !tbaa !7
  %19 = call i8* @_Z18getStrFieldByIndexPcPKci(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 1)
  call void @_Z13processParamsPKcS0_(i8* %17, i8* %19)
  %20 = call i64 @getline(i8** nonnull %1, i64* nonnull %2, %struct._IO_FILE* nonnull %8)
  %21 = icmp eq i64 %20, -1
  br i1 %21, label %22, label %15

; <label>:22:                                     ; preds = %15, %10
  %23 = load i32, i32* @pfs, align 4, !tbaa !1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %54

; <label>:25:                                     ; preds = %22
  %26 = load i64, i64* @tf, align 8, !tbaa !5
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25
  store i64 %26, i64* @intvsz, align 8, !tbaa !5
  br label %29

; <label>:29:                                     ; preds = %28, %25
  %30 = load i64, i64* @dynFSCount, align 8, !tbaa !5
  %31 = icmp sgt i64 %30, 0
  %32 = load i64, i64* @intvsz, align 8
  %33 = icmp sgt i64 %32, 0
  %34 = and i1 %31, %33
  br i1 %34, label %35, label %45

; <label>:35:                                     ; preds = %29
  %36 = srem i64 %30, %32
  %37 = icmp eq i64 %36, 0
  %38 = sdiv i64 %30, %32
  br i1 %37, label %39, label %40

; <label>:39:                                     ; preds = %35
  store i64 %38, i64* @intvCount, align 8, !tbaa !5
  br label %45

; <label>:40:                                     ; preds = %35
  %41 = sitofp i64 %38 to double
  %42 = call double @floor(double %41) #12
  %43 = fadd double %42, 1.000000e+00
  %44 = fptosi double %43 to i64
  store i64 %44, i64* @intvCount, align 8, !tbaa !5
  br label %45

; <label>:45:                                     ; preds = %39, %40, %29
  %46 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %45
  call void @_Z11updateFSIdxv()
  br label %49

; <label>:49:                                     ; preds = %45, %48
  %50 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  %51 = icmp eq i64* %50, null
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %49
  %53 = call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str.71, i64 0, i64 0))
  call void @exit(i32 -1) #11
  unreachable

; <label>:54:                                     ; preds = %49, %22
  %55 = load i8*, i8** @fiStat, align 8, !tbaa !7
  %56 = call i32 @_Z11file_existsPKc(i8* %55)
  %57 = load i32, i32* @pfs, align 4
  %58 = or i32 %57, %56
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %54
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %61

; <label>:61:                                     ; preds = %54, %60
  call void @_Z11printParamsv()
  call void @_Z11checkParamsv()
  store i32 1, i32* @fidatardflag, align 4, !tbaa !1
  %62 = call i32 @fclose(%struct._IO_FILE* nonnull %8)
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  call void @llvm.lifetime.end(i64 8, i8* %3) #2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z9checkMaskPvi(i8*, i32) #0 comdat {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  store i64 0, i64* %3, align 8, !tbaa !5
  %5 = sext i32 %1 to i64
  %6 = call i32 @memcmp(i8* %0, i8* %4, i64 %5) #13
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z13matchDynFSIdxv() #0 comdat {
  %1 = load i64, i64* @dynFSCounter, align 8, !tbaa !5
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @dynFSCounter, align 8, !tbaa !5
  %3 = tail call i32 @_Z14getIntervalIdxx(i64 %2)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %28, label %5

; <label>:5:                                      ; preds = %0
  %6 = sext i32 %3 to i64
  %7 = load i64, i64* @intvCount, align 8, !tbaa !5
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %28

; <label>:9:                                      ; preds = %5
  %10 = load i64, i64* @ef, align 8, !tbaa !5
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %28

; <label>:12:                                     ; preds = %9
  %13 = mul nsw i64 %10, %6
  %14 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  %15 = load i64, i64* @dynFSCounter, align 8, !tbaa !5
  %16 = load i64, i64* @ef, align 8
  %17 = shl i64 %13, 32
  %18 = ashr exact i64 %17, 32
  br label %21

; <label>:19:                                     ; preds = %21
  %20 = icmp slt i64 %27, %16
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %12, %19
  %22 = phi i64 [ 0, %12 ], [ %27, %19 ]
  %23 = add nsw i64 %22, %18
  %24 = getelementptr inbounds i64, i64* %14, i64 %23
  %25 = load i64, i64* %24, align 8, !tbaa !5
  %26 = icmp eq i64 %25, %15
  %27 = add nuw nsw i64 %22, 1
  br i1 %26, label %28, label %19

; <label>:28:                                     ; preds = %21, %19, %9, %0, %5
  %29 = phi i32 [ 0, %5 ], [ 0, %0 ], [ 0, %9 ], [ 0, %19 ], [ 1, %21 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z7flipBitPvj8DataType6FIAlgo(i8*, i32, i32, i32) #0 comdat {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6)
  store i64 0, i64* %5, align 8
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %11, label %8

; <label>:8:                                      ; preds = %4
  %9 = tail call i32 @_Z9getBitPosj8DataType6FIAlgo(i32 %1, i32 %2, i32 %3)
  %10 = sext i32 %9 to i64
  br label %11

; <label>:11:                                     ; preds = %4, %8
  %12 = phi i64 [ %10, %8 ], [ 0, %4 ]
  %13 = zext i32 %1 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %0, i64 %13, i32 1, i1 false)
  %14 = load i64, i64* %5, align 8
  %15 = shl i64 1, %12
  %16 = and i64 %14, %15
  %17 = icmp eq i64 %16, 0
  %18 = or i64 %14, %15
  %19 = xor i64 %15, -1
  %20 = and i64 %14, %19
  %21 = select i1 %17, i64 %18, i64 %20
  store i64 %21, i64* %5, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %6, i64 %13, i32 1, i1 false)
  %22 = trunc i64 %12 to i32
  call void @llvm.lifetime.end(i64 8, i8* %6)
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8*, i8*, i8*, i8*, i32, i8*) #0 comdat {
  %7 = alloca [1024 x i8], align 16
  %8 = load i8*, i8** @fiStat, align 8, !tbaa !7
  %9 = tail call %struct._IO_FILE* @_Z5getFDPKcS0_(i8* %8, i8* %5)
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %10) #2
  %11 = tail call i64 @strlen(i8* %0) #13
  %12 = icmp eq i32 %4, 7
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %6
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %9)
  br label %18

; <label>:15:                                     ; preds = %6
  %16 = load i64, i64* @execKey, align 8, !tbaa !9
  %17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i64 %16)
  br label %18

; <label>:18:                                     ; preds = %15, %13
  %19 = bitcast [1024 x i8]* %7 to i16*
  store i16 34, i16* %19, align 16
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 1
  %21 = and i64 %11, 4294967295
  %22 = call i8* @strncpy(i8* %20, i8* %0, i64 %21) #2
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %21
  %24 = bitcast i8* %23 to i16*
  store i16 34, i16* %24, align 1
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), i8* %10)
  %26 = or i32 %4, 2
  %27 = icmp eq i32 %26, 2
  %28 = icmp eq i32 %4, 3
  %29 = or i1 %28, %27
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %18
  %31 = bitcast i8* %1 to i32*
  %32 = load i32, i32* %31, align 4, !tbaa !1
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0), i32 %32)
  %34 = bitcast i8* %2 to i32*
  %35 = load i32, i32* %34, align 4, !tbaa !1
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0), i32 %35)
  br label %72

; <label>:37:                                     ; preds = %18
  switch i32 %4, label %68 [
    i32 1, label %38
    i32 4, label %45
    i32 5, label %52
    i32 6, label %61
  ]

; <label>:38:                                     ; preds = %37
  %39 = load i8, i8* %1, align 1, !tbaa !13
  %40 = sext i8 %39 to i32
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i32 %40)
  %42 = load i8, i8* %2, align 1, !tbaa !13
  %43 = sext i8 %42 to i32
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i32 %43)
  br label %72

; <label>:45:                                     ; preds = %37
  %46 = bitcast i8* %1 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !5
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0), i64 %47)
  %49 = bitcast i8* %2 to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !5
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0), i64 %50)
  br label %72

; <label>:52:                                     ; preds = %37
  %53 = bitcast i8* %1 to float*
  %54 = load float, float* %53, align 4, !tbaa !14
  %55 = fpext float %54 to double
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), double %55)
  %57 = bitcast i8* %2 to float*
  %58 = load float, float* %57, align 4, !tbaa !14
  %59 = fpext float %58 to double
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), double %59)
  br label %72

; <label>:61:                                     ; preds = %37
  %62 = bitcast i8* %1 to double*
  %63 = load double, double* %62, align 8, !tbaa !16
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), double %63)
  %65 = bitcast i8* %2 to double*
  %66 = load double, double* %65, align 8, !tbaa !16
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), double %66)
  br label %72

; <label>:68:                                     ; preds = %37
  br i1 %12, label %69, label %75

; <label>:69:                                     ; preds = %68
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), i8* %1)
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), i8* %2)
  br label %73

; <label>:72:                                     ; preds = %38, %52, %61, %45, %30
  br i1 %12, label %73, label %75

; <label>:73:                                     ; preds = %69, %72
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i8* %3)
  br label %79

; <label>:75:                                     ; preds = %68, %72
  %76 = bitcast i8* %3 to i32*
  %77 = load i32, i32* %76, align 4, !tbaa !1
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i64 0, i64 0), i32 %77)
  br label %79

; <label>:79:                                     ; preds = %75, %73
  %80 = icmp eq %struct._IO_FILE* %9, null
  br i1 %80, label %83, label %81

; <label>:81:                                     ; preds = %79
  %82 = call i32 @fclose(%struct._IO_FILE* nonnull %9)
  br label %83

; <label>:83:                                     ; preds = %79, %81
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %10) #2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z9getBitPosj8DataType6FIAlgo(i32, i32, i32) #0 comdat {
  switch i32 %2, label %13 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
    i32 3, label %11
  ]

; <label>:4:                                      ; preds = %3
  %5 = tail call i32 @_Z12getBitPosCBRj(i32 %0)
  br label %13

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @_Z12getBitPosABR8DataType(i32 %1)
  br label %13

; <label>:8:                                      ; preds = %3
  %9 = shl i32 %0, 3
  %10 = add i32 %9, -1
  br label %13

; <label>:11:                                     ; preds = %3
  %12 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.74, i64 0, i64 0))
  tail call void @exit(i32 -1) #11
  unreachable

; <label>:13:                                     ; preds = %3, %8, %6, %4
  %14 = phi i32 [ -1, %3 ], [ %10, %8 ], [ %7, %6 ], [ %5, %4 ]
  ret i32 %14
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z12getBitPosCBRj(i32) #0 comdat {
  %2 = load i32, i32* @fid, align 4, !tbaa !18
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %12

; <label>:4:                                      ; preds = %1
  %5 = shl i32 %0, 3
  %6 = add i32 %5, -1
  %7 = load i32, i32* @fibr, align 4, !tbaa !20
  %8 = icmp ugt i32 %7, %0
  br i1 %8, label %21, label %9

; <label>:9:                                      ; preds = %4
  %10 = sub i32 %0, %7
  %11 = shl i32 %10, 3
  br label %21

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* @fibr, align 4, !tbaa !20
  %14 = icmp ugt i32 %13, %0
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %12
  %16 = shl i32 %13, 3
  %17 = add nsw i32 %16, -1
  br label %21

; <label>:18:                                     ; preds = %12
  %19 = shl i32 %0, 3
  %20 = add i32 %19, -1
  br label %21

; <label>:21:                                     ; preds = %4, %15, %18, %9
  %22 = phi i32 [ %6, %9 ], [ 0, %15 ], [ 0, %18 ], [ %6, %4 ]
  %23 = phi i32 [ %11, %9 ], [ %17, %15 ], [ %20, %18 ], [ 0, %4 ]
  %24 = load i32, i32* @fid, align 4, !tbaa !18
  %25 = icmp eq i32 %24, 0
  %26 = tail call i32 @rand() #2
  %27 = sub nsw i32 %22, %23
  %28 = icmp sgt i32 %27, -1
  %29 = sub i32 0, %27
  %30 = select i1 %28, i32 %27, i32 %29
  %31 = add nsw i32 %30, 1
  %32 = srem i32 %26, %31
  %33 = sub i32 0, %32
  %34 = select i1 %25, i32 %32, i32 %33
  %35 = add i32 %34, %22
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z12getBitPosABR8DataType(i32) #0 comdat {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 5
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %1
  %5 = icmp eq i32 %0, 6
  %6 = select i1 %5, i32 63, i32 -1
  br label %11

; <label>:7:                                      ; preds = %1
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  br label %11

; <label>:11:                                     ; preds = %4, %7
  %12 = phi i32 [ %6, %4 ], [ %10, %7 ]
  %13 = load i32, i32* @bu, align 4, !tbaa !1
  %14 = icmp sgt i32 %13, %12
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* @bl, align 4, !tbaa !1
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %11, %15
  br label %19

; <label>:19:                                     ; preds = %15, %18
  %20 = phi i32 [ %12, %18 ], [ %13, %15 ]
  %21 = phi i32 [ 0, %18 ], [ %16, %15 ]
  %22 = tail call i32 @rand() #2
  %23 = sub nsw i32 %20, %21
  %24 = icmp sgt i32 %23, -1
  %25 = sub i32 0, %23
  %26 = select i1 %24, i32 %23, i32 %25
  %27 = add nsw i32 %26, 1
  %28 = srem i32 %22, %27
  %29 = add nsw i32 %28, %21
  ret i32 %29
}

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z14getIntervalIdxx(i64) #0 comdat {
  %2 = load i64, i64* @intvsz, align 8, !tbaa !5
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %9, label %4

; <label>:4:                                      ; preds = %1
  %5 = sdiv i64 %0, %2
  %6 = sitofp i64 %5 to double
  %7 = tail call double @floor(double %6) #12
  %8 = fptosi double %7 to i32
  br label %9

; <label>:9:                                      ; preds = %1, %4
  %10 = phi i32 [ %8, %4 ], [ -1, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind readnone
declare double @floor(double) #7

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z15updateTimeStampv() #0 comdat {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = call i32 @gettimeofday(%struct.timeval* nonnull %1, %struct.timezone* null) #2
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = mul nsw i64 %5, 1000000
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !24
  %9 = add nsw i64 %6, %8
  store i64 %9, i64* @execKey, align 8, !tbaa !9
  call void @llvm.lifetime.end(i64 16, i8* %2) #2
  ret void
}

declare i64 @getline(i8**, i64*, %struct._IO_FILE*) #8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i8* @_Z18getStrFieldByIndexPcPKci(i8*, i8*, i32) #0 comdat {
  %4 = tail call i8* @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZZ18getStrFieldByIndexPcPKciE4temp, i64 0, i64 0), i8* %0) #2
  %5 = tail call i8* @strtok(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZZ18getStrFieldByIndexPcPKciE4temp, i64 0, i64 0), i8* %1) #2
  %6 = icmp eq i8* %5, null
  br i1 %6, label %15, label %7

; <label>:7:                                      ; preds = %3, %12
  %8 = phi i32 [ %10, %12 ], [ -1, %3 ]
  %9 = phi i8* [ %13, %12 ], [ %5, %3 ]
  %10 = add nsw i32 %8, 1
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %7
  %13 = tail call i8* @strtok(i8* null, i8* %1) #2
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %7

; <label>:15:                                     ; preds = %7, %12, %3
  %16 = phi i8* [ null, %3 ], [ %9, %7 ], [ null, %12 ]
  ret i8* %16
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z13processParamsPKcS0_(i8*, i8*) #0 comdat {
  %3 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0)) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5
  store i32 0, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0)) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %9
  store i32 1, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:13:                                     ; preds = %9
  %14 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  store i32 2, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:17:                                     ; preds = %13
  store i32 3, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:18:                                     ; preds = %2
  %19 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %54

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0)) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  store i32 1, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25
  store i32 2, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:29:                                     ; preds = %25
  %30 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29
  store i32 3, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:33:                                     ; preds = %29
  %34 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0)) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %33
  store i32 4, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %37
  store i32 5, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:41:                                     ; preds = %37
  %42 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41
  store i32 6, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:45:                                     ; preds = %41
  %46 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %45
  store i32 7, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:49:                                     ; preds = %45
  %50 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  store i32 8, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:53:                                     ; preds = %49
  store i32 9, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:54:                                     ; preds = %18
  %55 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

; <label>:57:                                     ; preds = %54
  %58 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0)) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  store i32 0, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:61:                                     ; preds = %57
  %62 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %61
  store i32 1, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:65:                                     ; preds = %61
  store i32 2, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:66:                                     ; preds = %54
  %67 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0)) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %66
  %70 = tail call i32 @atoi(i8* %1) #13
  store i32 %70, i32* @bu, align 4, !tbaa !1
  br label %96

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0)) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

; <label>:74:                                     ; preds = %71
  %75 = tail call i32 @atoi(i8* %1) #13
  store i32 %75, i32* @bl, align 4, !tbaa !1
  br label %96

; <label>:76:                                     ; preds = %71
  %77 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #13
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %76
  %80 = tail call i64 @atoll(i8* %1) #13
  store i64 %80, i64* @ef, align 8, !tbaa !5
  br label %96

; <label>:81:                                     ; preds = %76
  %82 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0)) #13
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

; <label>:84:                                     ; preds = %81
  %85 = tail call i64 @atoll(i8* %1) #13
  store i64 %85, i64* @tf, align 8, !tbaa !5
  br label %96

; <label>:86:                                     ; preds = %81
  %87 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0)) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

; <label>:89:                                     ; preds = %86
  %90 = tail call i32 @atoi(i8* %1) #13
  store i32 %90, i32* @pfs, align 4, !tbaa !1
  br label %96

; <label>:91:                                     ; preds = %86
  %92 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)) #13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %91
  %95 = tail call i64 @atoll(i8* %1) #13
  store i64 %95, i64* @dynFSCount, align 8, !tbaa !5
  br label %96

; <label>:96:                                     ; preds = %91, %28, %36, %44, %52, %53, %48, %40, %32, %24, %69, %79, %89, %94, %84, %74, %60, %65, %64, %8, %16, %17, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z11updateFSIdxv() #0 comdat {
  %1 = load i64, i64* @intvCount, align 8, !tbaa !5
  %2 = icmp sgt i64 %1, 0
  %3 = load i64, i64* @ef, align 8
  %4 = icmp sgt i64 %3, 0
  %5 = and i1 %2, %4
  br i1 %5, label %6, label %10

; <label>:6:                                      ; preds = %0
  %7 = mul nsw i64 %3, %1
  %8 = tail call noalias i8* @calloc(i64 %7, i64 8) #2
  store i8* %8, i8** bitcast (i64** @dynFSIdx to i8**), align 8, !tbaa !7
  %9 = bitcast i8* %8 to i64*
  br label %12

; <label>:10:                                     ; preds = %0
  %11 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  br label %12

; <label>:12:                                     ; preds = %10, %6
  %13 = phi i64* [ %11, %10 ], [ %9, %6 ]
  %14 = icmp eq i64* %13, null
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %12
  %16 = load i64, i64* @intvCount, align 8, !tbaa !5
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %20, label %50

; <label>:18:                                     ; preds = %12
  %19 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str.73, i64 0, i64 0))
  tail call void @exit(i32 -1) #11
  unreachable

; <label>:20:                                     ; preds = %15, %46
  %21 = phi i64 [ %47, %46 ], [ 0, %15 ]
  %22 = load i64, i64* @ef, align 8, !tbaa !5
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %46

; <label>:24:                                     ; preds = %20, %42
  %25 = phi i64 [ %43, %42 ], [ 0, %20 ]
  %26 = tail call i64 @_Z12gen64bitRandv()
  %27 = load i64, i64* @intvsz, align 8, !tbaa !5
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %42

; <label>:29:                                     ; preds = %24
  %30 = mul nsw i64 %27, %21
  %31 = srem i64 %26, %27
  %32 = icmp slt i64 %31, 0
  %33 = sub nsw i64 0, %31
  %34 = select i1 %32, i64 %33, i64 %31
  %35 = add i64 %30, 1
  %36 = add i64 %35, %34
  %37 = load i64, i64* @ef, align 8, !tbaa !5
  %38 = mul nsw i64 %37, %21
  %39 = add nsw i64 %38, %25
  %40 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  %41 = getelementptr inbounds i64, i64* %40, i64 %39
  store i64 %36, i64* %41, align 8, !tbaa !5
  br label %42

; <label>:42:                                     ; preds = %24, %29
  %43 = add nuw nsw i64 %25, 1
  %44 = load i64, i64* @ef, align 8, !tbaa !5
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %24, label %46

; <label>:46:                                     ; preds = %42, %20
  %47 = add nuw nsw i64 %21, 1
  %48 = load i64, i64* @intvCount, align 8, !tbaa !5
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %20, label %50

; <label>:50:                                     ; preds = %46, %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z11file_existsPKc(i8*) #0 comdat {
  %2 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %3 = icmp eq %struct._IO_FILE* %2, null
  br i1 %3, label %6, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %2)
  br label %6

; <label>:6:                                      ; preds = %1, %4
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: noinline norecurse nounwind uwtable
define linkonce_odr void @_Z11printParamsv() #9 comdat {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z11checkParamsv() #0 comdat {
  %1 = load i32, i32* @fialg, align 4, !tbaa !11
  %2 = icmp eq i32 %1, 3
  br i1 %2, label %3, label %4

; <label>:3:                                      ; preds = %0
  tail call void @__assert_fail(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i64 0, i64 0), i32 292, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* @fibr, align 4, !tbaa !20
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %4
  tail call void @__assert_fail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i64 0, i64 0), i32 293, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* @fid, align 4, !tbaa !18
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  tail call void @__assert_fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i64 0, i64 0), i32 294, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* @bu, align 4, !tbaa !1
  %14 = load i32, i32* @bl, align 4, !tbaa !1
  %15 = icmp sge i32 %13, %14
  %16 = icmp slt i32 %13, 64
  %17 = and i1 %16, %15
  %18 = icmp sgt i32 %14, -1
  %19 = and i1 %18, %17
  %20 = icmp ne i32 %1, 1
  %21 = or i1 %20, %19
  br i1 %21, label %23, label %22

; <label>:22:                                     ; preds = %12
  tail call void @__assert_fail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i64 0, i64 0), i32 295, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:23:                                     ; preds = %12
  %24 = load i64, i64* @ef, align 8, !tbaa !5
  %25 = load i64, i64* @tf, align 8, !tbaa !5
  %26 = icmp sle i64 %24, %25
  %27 = icmp sgt i64 %24, 0
  %28 = and i1 %27, %26
  %29 = icmp sgt i64 %25, 0
  %30 = and i1 %29, %28
  br i1 %30, label %32, label %31

; <label>:31:                                     ; preds = %23
  tail call void @__assert_fail(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i64 0, i64 0), i32 296, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:32:                                     ; preds = %23
  %33 = load i32, i32* @pfs, align 4, !tbaa !1
  %34 = or i32 %33, 1
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %32
  tail call void @__assert_fail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i64 0, i64 0), i32 297, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:37:                                     ; preds = %32
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_Z12gen64bitRandv() #0 comdat {
  br label %1

; <label>:1:                                      ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %9, %1 ]
  %3 = phi i64 [ 0, %0 ], [ %8, %1 ]
  %4 = tail call i32 @rand() #2
  %5 = and i32 %4, 1
  %6 = zext i32 %5 to i64
  %7 = or i64 %6, %3
  %8 = shl i64 %7, 1
  %9 = add nuw nsw i32 %2, 1
  %10 = icmp eq i32 %9, 64
  br i1 %10, label %11, label %1

; <label>:11:                                     ; preds = %1
  ret i64 %8
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) #6

; Function Attrs: nounwind readonly
declare i64 @atoll(i8* nocapture) #6

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

; Function Attrs: noinline uwtable
define i32 @_Z21injectSoftErrorIntTy8cPKcc(i8 signext, i8*, i8 signext) #4 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8 %0, i8* %4, align 1, !tbaa !13
  store i8 %2, i8* %5, align 1, !tbaa !13
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  call void @llvm.lifetime.start(i64 1, i8* nonnull %6) #2
  %12 = load i8, i8* %4, align 1, !tbaa !13
  store i8 %12, i8* %6, align 1, !tbaa !13
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  store i32 -1, i32* %7, align 4, !tbaa !1
  %14 = call i32 @_Z9checkMaskPvi(i8* nonnull %5, i32 1)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* @fsIntTy8, align 8, !tbaa !5
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* @fsIntTy8, align 8, !tbaa !5
  %19 = load i32, i32* @pfs, align 4, !tbaa !1
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %31, label %21

; <label>:21:                                     ; preds = %16
  %22 = call i32 @_Z13matchDynFSIdxv()
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* @fialg, align 4, !tbaa !11
  %26 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* nonnull %4, i32 1, i32 1, i32 %25)
  store i32 %26, i32* %7, align 4, !tbaa !1
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %24
  %29 = load i64, i64* @fiIntTy8, align 8, !tbaa !5
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* @fiIntTy8, align 8, !tbaa !5
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* nonnull %6, i8* nonnull %4, i8* nonnull %13, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %31

; <label>:31:                                     ; preds = %24, %28, %21, %16, %11
  %32 = load i8, i8* %4, align 1, !tbaa !13
  %33 = sext i8 %32 to i32
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  call void @llvm.lifetime.end(i64 1, i8* nonnull %6) #2
  ret i32 %33
}

; Function Attrs: noinline uwtable
define signext i16 @_Z22injectSoftErrorIntTy16sPKcs(i16 signext, i8*, i16 signext) #4 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store i16 %0, i16* %4, align 2, !tbaa !25
  store i16 %2, i16* %5, align 2, !tbaa !25
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast i16* %6 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #2
  %13 = load i16, i16* %4, align 2, !tbaa !25
  store i16 %13, i16* %6, align 2, !tbaa !25
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 -1, i32* %7, align 4, !tbaa !1
  %15 = bitcast i16* %5 to i8*
  %16 = call i32 @_Z9checkMaskPvi(i8* %15, i32 2)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %34, label %18

; <label>:18:                                     ; preds = %11
  %19 = load i64, i64* @fsIntTy16, align 8, !tbaa !5
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @fsIntTy16, align 8, !tbaa !5
  %21 = load i32, i32* @pfs, align 4, !tbaa !1
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %34, label %23

; <label>:23:                                     ; preds = %18
  %24 = call i32 @_Z13matchDynFSIdxv()
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

; <label>:26:                                     ; preds = %23
  %27 = bitcast i16* %4 to i8*
  %28 = load i32, i32* @fialg, align 4, !tbaa !11
  %29 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* %27, i32 2, i32 2, i32 %28)
  store i32 %29, i32* %7, align 4, !tbaa !1
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %26
  %32 = load i64, i64* @fiIntTy16, align 8, !tbaa !5
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* @fiIntTy16, align 8, !tbaa !5
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %27, i8* nonnull %14, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %34

; <label>:34:                                     ; preds = %26, %31, %23, %18, %11
  %35 = load i16, i16* %4, align 2, !tbaa !25
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  call void @llvm.lifetime.end(i64 2, i8* %12) #2
  ret i16 %35
}

; Function Attrs: noinline uwtable
define i32 @_Z22injectSoftErrorIntTy32iPKci(i32, i8*, i32) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !1
  store i32 %2, i32* %5, align 4, !tbaa !1
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load i32, i32* %4, align 4, !tbaa !1
  store i32 %13, i32* %6, align 4, !tbaa !1
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 -1, i32* %7, align 4, !tbaa !1
  %15 = bitcast i32* %5 to i8*
  %16 = call i32 @_Z9checkMaskPvi(i8* %15, i32 4)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %34, label %18

; <label>:18:                                     ; preds = %11
  %19 = load i64, i64* @fsIntTy32, align 8, !tbaa !5
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @fsIntTy32, align 8, !tbaa !5
  %21 = load i32, i32* @pfs, align 4, !tbaa !1
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %34, label %23

; <label>:23:                                     ; preds = %18
  %24 = call i32 @_Z13matchDynFSIdxv()
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

; <label>:26:                                     ; preds = %23
  %27 = bitcast i32* %4 to i8*
  %28 = load i32, i32* @fialg, align 4, !tbaa !11
  %29 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* %27, i32 4, i32 3, i32 %28)
  store i32 %29, i32* %7, align 4, !tbaa !1
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %26
  %32 = load i64, i64* @fiIntTy32, align 8, !tbaa !5
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* @fiIntTy32, align 8, !tbaa !5
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %27, i8* nonnull %14, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %34

; <label>:34:                                     ; preds = %26, %31, %23, %18, %11
  %35 = load i32, i32* %4, align 4, !tbaa !1
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret i32 %35
}

; Function Attrs: noinline uwtable
define i64 @_Z22injectSoftErrorIntTy64xPKcx(i64, i8*, i64) #4 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8, !tbaa !5
  store i64 %2, i64* %5, align 8, !tbaa !5
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load i64, i64* %4, align 8, !tbaa !5
  store i64 %13, i64* %6, align 8, !tbaa !5
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 -1, i32* %7, align 4, !tbaa !1
  %15 = bitcast i64* %5 to i8*
  %16 = call i32 @_Z9checkMaskPvi(i8* %15, i32 8)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %34, label %18

; <label>:18:                                     ; preds = %11
  %19 = load i64, i64* @fsIntTy64, align 8, !tbaa !5
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @fsIntTy64, align 8, !tbaa !5
  %21 = load i32, i32* @pfs, align 4, !tbaa !1
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %34, label %23

; <label>:23:                                     ; preds = %18
  %24 = call i32 @_Z13matchDynFSIdxv()
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

; <label>:26:                                     ; preds = %23
  %27 = bitcast i64* %4 to i8*
  %28 = load i32, i32* @fialg, align 4, !tbaa !11
  %29 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* %27, i32 8, i32 4, i32 %28)
  store i32 %29, i32* %7, align 4, !tbaa !1
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %26
  %32 = load i64, i64* @fiIntTy64, align 8, !tbaa !5
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* @fiIntTy64, align 8, !tbaa !5
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %27, i8* nonnull %14, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %34

; <label>:34:                                     ; preds = %26, %31, %23, %18, %11
  %35 = load i64, i64* %4, align 8, !tbaa !5
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret i64 %35
}

; Function Attrs: noinline uwtable
define float @_Z22injectSoftErrorFloatTyfPKcf(float, i8*, float) #4 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %4, align 4, !tbaa !14
  store float %2, float* %5, align 4, !tbaa !14
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast float* %6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast float* %4 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !14
  %15 = bitcast float* %6 to i32*
  store i32 %14, i32* %15, align 4, !tbaa !14
  %16 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  store i32 -1, i32* %7, align 4, !tbaa !1
  %17 = bitcast float* %5 to i8*
  %18 = call i32 @_Z9checkMaskPvi(i8* %17, i32 4)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %36, label %20

; <label>:20:                                     ; preds = %11
  %21 = load i64, i64* @fsFloatTy, align 8, !tbaa !5
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @fsFloatTy, align 8, !tbaa !5
  %23 = load i32, i32* @pfs, align 4, !tbaa !1
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %36, label %25

; <label>:25:                                     ; preds = %20
  %26 = call i32 @_Z13matchDynFSIdxv()
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

; <label>:28:                                     ; preds = %25
  %29 = bitcast float* %4 to i8*
  %30 = load i32, i32* @fialg, align 4, !tbaa !11
  %31 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* %29, i32 4, i32 5, i32 %30)
  store i32 %31, i32* %7, align 4, !tbaa !1
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %28
  %34 = load i64, i64* @fiFloatTy, align 8, !tbaa !5
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* @fiFloatTy, align 8, !tbaa !5
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %29, i8* nonnull %16, i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %36

; <label>:36:                                     ; preds = %28, %33, %25, %20, %11
  %37 = load float, float* %4, align 4, !tbaa !14
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret float %37
}

; Function Attrs: noinline uwtable
define double @_Z23injectSoftErrorDoubleTydPKcd(double, i8*, double) #4 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8, !tbaa !16
  store double %2, double* %5, align 8, !tbaa !16
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast double* %4 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !16
  %15 = bitcast double* %6 to i64*
  store i64 %14, i64* %15, align 8, !tbaa !16
  %16 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  store i32 -1, i32* %7, align 4, !tbaa !1
  %17 = bitcast double* %5 to i8*
  %18 = call i32 @_Z9checkMaskPvi(i8* %17, i32 8)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %36, label %20

; <label>:20:                                     ; preds = %11
  %21 = load i64, i64* @fsDoubleTy, align 8, !tbaa !5
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @fsDoubleTy, align 8, !tbaa !5
  %23 = load i32, i32* @pfs, align 4, !tbaa !1
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %36, label %25

; <label>:25:                                     ; preds = %20
  %26 = call i32 @_Z13matchDynFSIdxv()
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

; <label>:28:                                     ; preds = %25
  %29 = bitcast double* %4 to i8*
  %30 = load i32, i32* @fialg, align 4, !tbaa !11
  %31 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* %29, i32 8, i32 6, i32 %30)
  store i32 %31, i32* %7, align 4, !tbaa !1
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %28
  %34 = load i64, i64* @fiDoubleTy, align 8, !tbaa !5
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* @fiDoubleTy, align 8, !tbaa !5
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %29, i8* nonnull %16, i32 6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %36

; <label>:36:                                     ; preds = %28, %33, %25, %20, %11
  %37 = load double, double* %4, align 8, !tbaa !16
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret double %37
}

; Function Attrs: noinline nounwind uwtable
define i32 @file_exists(i8* nocapture readonly) #0 {
  %2 = tail call i32 @access(i8* %0, i32 0) #2
  %3 = icmp ne i32 %2, -1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind
declare i32 @access(i8* nocapture readonly, i32) #1

; Function Attrs: noinline nounwind uwtable
define void @writeFPRData(i8* nocapture readonly, i64, i32) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.16, i64 0, i64 0))
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ]
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.17, i64 0, i64 0), i64 %1)
  %12 = tail call i32 @fclose(%struct._IO_FILE* %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @writeOVRData(i8* nocapture readonly, double, i32) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.16, i64 0, i64 0))
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ]
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.18, i64 0, i64 0), double %1)
  %12 = tail call i32 @fclose(%struct._IO_FILE* %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @print_data_3d(i32, i32, i32, double* nocapture readonly, i8* nocapture readonly, i32) #0 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.16, i64 0, i64 0))
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = phi %struct._IO_FILE* [ %9, %8 ], [ %11, %10 ]
  %14 = icmp sgt i32 %0, 0
  br i1 %14, label %15, label %45

; <label>:15:                                     ; preds = %12
  %16 = icmp sgt i32 %1, 0
  %17 = icmp sgt i32 %2, 0
  br label %18

; <label>:18:                                     ; preds = %42, %15
  %19 = phi i32 [ 0, %15 ], [ %43, %42 ]
  br i1 %16, label %20, label %42

; <label>:20:                                     ; preds = %18
  %21 = mul nsw i32 %19, %1
  br label %22

; <label>:22:                                     ; preds = %38, %20
  %23 = phi i64 [ 0, %20 ], [ %39, %38 ]
  br i1 %17, label %24, label %38

; <label>:24:                                     ; preds = %22
  %25 = trunc i64 %23 to i32
  %26 = add i32 %25, %21
  %27 = mul i32 %26, %2
  %28 = sext i32 %27 to i64
  br label %29

; <label>:29:                                     ; preds = %29, %24
  %30 = phi i64 [ 0, %24 ], [ %35, %29 ]
  %31 = add nsw i64 %30, %28
  %32 = getelementptr inbounds double, double* %3, i64 %31
  %33 = load double, double* %32, align 8, !tbaa !27
  %34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.19, i64 0, i64 0), double %33)
  %35 = add nuw nsw i64 %30, 1
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %36, %2
  br i1 %37, label %38, label %29

; <label>:38:                                     ; preds = %29, %22
  %39 = add nuw nsw i64 %23, 1
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %40, %1
  br i1 %41, label %42, label %22

; <label>:42:                                     ; preds = %38, %18
  %43 = add nuw nsw i32 %19, 1
  %44 = icmp eq i32 %43, %0
  br i1 %44, label %45, label %18

; <label>:45:                                     ; preds = %42, %12
  %46 = tail call i32 @fclose(%struct._IO_FILE* %13)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @print_data_2d(i32, i32, double* nocapture readonly, i8* nocapture readonly, i32) #0 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %5
  %8 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %11

; <label>:9:                                      ; preds = %5
  %10 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.16, i64 0, i64 0))
  br label %11

; <label>:11:                                     ; preds = %9, %7
  %12 = phi %struct._IO_FILE* [ %8, %7 ], [ %10, %9 ]
  %13 = icmp sgt i32 %0, 0
  br i1 %13, label %14, label %34

; <label>:14:                                     ; preds = %11
  %15 = icmp sgt i32 %1, 0
  %16 = sext i32 %1 to i64
  br label %17

; <label>:17:                                     ; preds = %30, %14
  %18 = phi i64 [ 0, %14 ], [ %31, %30 ]
  br i1 %15, label %19, label %30

; <label>:19:                                     ; preds = %17
  %20 = mul nsw i64 %18, %16
  br label %21

; <label>:21:                                     ; preds = %21, %19
  %22 = phi i64 [ 0, %19 ], [ %27, %21 ]
  %23 = add nsw i64 %22, %20
  %24 = getelementptr inbounds double, double* %2, i64 %23
  %25 = load double, double* %24, align 8, !tbaa !27
  %26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.19, i64 0, i64 0), double %25)
  %27 = add nuw nsw i64 %22, 1
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %30, label %21

; <label>:30:                                     ; preds = %21, %17
  %31 = add nuw nsw i64 %18, 1
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %34, label %17

; <label>:34:                                     ; preds = %30, %11
  %35 = tail call i32 @fclose(%struct._IO_FILE* %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @print_data_1d(i32, double* nocapture readonly, i8* nocapture readonly, i32) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %4
  %7 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %10

; <label>:8:                                      ; preds = %4
  %9 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.16, i64 0, i64 0))
  br label %10

; <label>:10:                                     ; preds = %8, %6
  %11 = phi %struct._IO_FILE* [ %7, %6 ], [ %9, %8 ]
  %12 = icmp sgt i32 %0, 0
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %10, %13
  %14 = phi i64 [ %18, %13 ], [ 0, %10 ]
  %15 = getelementptr inbounds double, double* %1, i64 %14
  %16 = load double, double* %15, align 8, !tbaa !27
  %17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.19, i64 0, i64 0), double %16)
  %18 = add nuw nsw i64 %14, 1
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %19, %0
  br i1 %20, label %21, label %13

; <label>:21:                                     ; preds = %13, %10
  %22 = tail call i32 @fclose(%struct._IO_FILE* %11)
  ret void
}

; Function Attrs: noinline norecurse nounwind readnone uwtable
define void @psgProtect(double* nocapture, i64, i64) #10 {
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @_Z11initPrfDatav() #9 {
  br label %1

; <label>:1:                                      ; preds = %8, %0
  %2 = phi i64 [ 0, %0 ], [ %9, %8 ]
  br label %3

; <label>:3:                                      ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  %5 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %2, i64 %4
  store i64 9223372036854775807, i64* %5, align 8, !tbaa !5
  %6 = add nuw nsw i64 %4, 1
  %7 = icmp eq i64 %6, 20
  br i1 %7, label %8, label %3

; <label>:8:                                      ; preds = %3
  %9 = add nuw nsw i64 %2, 1
  %10 = icmp eq i64 %9, 512
  br i1 %10, label %11, label %1

; <label>:11:                                     ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_Z8psgRelidxxx(i64, i64, i64) #0 {
  %4 = icmp eq i64 %1, %2
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.22, i64 0, i64 0), i64 %0, i64 %1, i64 %2)
  br label %7

; <label>:7:                                      ; preds = %3, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_Z10psgProfilexxPKc(i64, i64, i8* nocapture readonly) #0 {
  %4 = load i32, i32* @init_flag, align 4, !tbaa !1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call void @_Z11initPrfDatav()
  store i32 1, i32* @init_flag, align 4, !tbaa !1
  br label %7

; <label>:7:                                      ; preds = %3, %6
  %8 = icmp sgt i64 %0, 511
  br i1 %8, label %67, label %9

; <label>:9:                                      ; preds = %7, %17
  %10 = phi i32 [ %18, %17 ], [ 0, %7 ]
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 %11
  %13 = load i64, i64* %12, align 8, !tbaa !5
  %14 = icmp eq i64 %13, %1
  br i1 %14, label %67, label %15

; <label>:15:                                     ; preds = %9
  %16 = icmp eq i64 %13, 9223372036854775807
  br i1 %16, label %20, label %17

; <label>:17:                                     ; preds = %15
  %18 = add nsw i32 %10, 1
  %19 = icmp ult i32 %18, 20
  br i1 %19, label %9, label %22

; <label>:20:                                     ; preds = %15
  store i64 %1, i64* %12, align 8, !tbaa !5
  %21 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.23, i64 0, i64 0))
  br label %27

; <label>:22:                                     ; preds = %17
  %23 = icmp eq i32 %18, 20
  %24 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.23, i64 0, i64 0))
  br i1 %23, label %25, label %27

; <label>:25:                                     ; preds = %22
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2.24, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %24)
  br label %64

; <label>:27:                                     ; preds = %20, %22
  %28 = phi i32 [ %10, %20 ], [ %18, %22 ]
  %29 = phi %struct._IO_FILE* [ %21, %20 ], [ %24, %22 ]
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 %30
  %32 = load i64, i64* %31, align 8, !tbaa !5
  %33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.25, i64 0, i64 0), i32 %28, i64 %32)
  %34 = load i32, i32* @dimcount, align 4, !tbaa !1
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %27
  %37 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.26, i64 0, i64 0), i32 %34)
  br label %40

; <label>:38:                                     ; preds = %27
  %39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5.27, i64 0, i64 0), i32 %34)
  br label %40

; <label>:40:                                     ; preds = %38, %36
  %41 = load i32, i32* @dimcount, align 4, !tbaa !1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %64, label %43

; <label>:43:                                     ; preds = %40, %60
  %44 = phi i32 [ %62, %60 ], [ %41, %40 ]
  %45 = phi i32 [ %61, %60 ], [ 0, %40 ]
  %46 = add nsw i32 %44, -1
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %43
  %49 = zext i32 %45 to i64
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* @psgdim, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !1
  %52 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.28, i64 0, i64 0), i32 %51)
  br label %60

; <label>:53:                                     ; preds = %43
  %54 = icmp eq i32 %45, %46
  br i1 %54, label %55, label %60

; <label>:55:                                     ; preds = %53
  %56 = zext i32 %45 to i64
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* @psgdim, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !1
  %59 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7.29, i64 0, i64 0), i32 %58)
  br label %60

; <label>:60:                                     ; preds = %48, %55, %53
  %61 = add i32 %45, 1
  %62 = load i32, i32* @dimcount, align 4, !tbaa !1
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %43, label %64

; <label>:64:                                     ; preds = %60, %40, %25
  %65 = phi %struct._IO_FILE* [ %24, %25 ], [ %29, %40 ], [ %29, %60 ]
  %66 = tail call i32 @fclose(%struct._IO_FILE* %65)
  br label %67

; <label>:67:                                     ; preds = %9, %7, %64
  ret void
}

; Function Attrs: noinline nounwind uwtable
define double @rtclock() #0 {
  %1 = alloca %struct.timezone, align 4
  %2 = alloca %struct.timeval, align 8
  %3 = bitcast %struct.timezone* %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  %5 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* nonnull %1) #2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %0
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.58, i64 0, i64 0), i32 %5)
  br label %9

; <label>:9:                                      ; preds = %0, %7
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !31
  %12 = sitofp i64 %11 to double
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %14 = load i64, i64* %13, align 8, !tbaa !34
  %15 = sitofp i64 %14 to double
  %16 = fmul double %15, 1.000000e-06
  %17 = fadd double %12, %16
  call void @llvm.lifetime.end(i64 16, i8* %4) #2
  call void @llvm.lifetime.end(i64 8, i8* %3) #2
  ret double %17
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @init_array() #9 {
  br label %1

; <label>:1:                                      ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %7, %1 ]
  %3 = trunc i64 %2 to i32
  %4 = sitofp i32 %3 to double
  %5 = fdiv double %4, 2.000000e+06
  %6 = getelementptr inbounds [2000000 x double], [2000000 x double]* @a, i64 0, i64 %2
  store double %5, double* %6, align 8, !tbaa !27
  %7 = add nuw nsw i64 %2, 1
  %8 = icmp eq i64 %7, 2000000
  br i1 %8, label %9, label %1

; <label>:9:                                      ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @print_array() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !35
  br label %2

; <label>:2:                                      ; preds = %14, %0
  %3 = phi i64 [ 0, %0 ], [ %15, %14 ]
  %4 = phi %struct._IO_FILE* [ %1, %0 ], [ %16, %14 ]
  %5 = getelementptr inbounds [2000000 x double], [2000000 x double]* @a, i64 0, i64 %3
  %6 = load double, double* %5, align 8, !tbaa !27
  %7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.59, i64 0, i64 0), double %6) #14
  %8 = trunc i64 %3 to i32
  %9 = srem i32 %8, 80
  %10 = icmp eq i32 %9, 20
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !35
  %13 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %12) #14
  br label %14

; <label>:14:                                     ; preds = %2, %11
  %15 = add nuw nsw i64 %3, 1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !35
  %17 = icmp eq i64 %15, 2000000
  br i1 %17, label %18, label %2

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %16) #14
  ret void
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: noinline norecurse nounwind uwtable
define void @func() #9 {
  br label %1

; <label>:1:                                      ; preds = %34, %0
  %2 = phi i64 [ 0, %0 ], [ %36, %34 ]
  %3 = phi i32 [ 1999999, %0 ], [ %38, %34 ]
  %4 = phi i64 [ 3, %0 ], [ %37, %34 ]
  %5 = load double, double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @a, i64 0, i64 1), align 8, !tbaa !27
  %6 = load double, double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @a, i64 0, i64 2), align 16, !tbaa !27
  %7 = fadd double %5, %6
  %8 = load double, double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @a, i64 0, i64 3), align 8, !tbaa !27
  %9 = fadd double %7, %8
  %10 = fmul double %9, 3.333300e-01
  store double %10, double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @b, i64 0, i64 2), align 16, !tbaa !27
  %11 = mul nsw i64 %2, -2
  br label %12

; <label>:12:                                     ; preds = %12, %1
  %13 = phi i64 [ %31, %12 ], [ %4, %1 ]
  %14 = add nsw i64 %13, %11
  %15 = add nsw i64 %14, -1
  %16 = getelementptr inbounds [2000000 x double], [2000000 x double]* @a, i64 0, i64 %15
  %17 = load double, double* %16, align 8, !tbaa !27
  %18 = getelementptr inbounds [2000000 x double], [2000000 x double]* @a, i64 0, i64 %14
  %19 = load double, double* %18, align 8, !tbaa !27
  %20 = fadd double %17, %19
  %21 = add nuw nsw i64 %14, 1
  %22 = getelementptr inbounds [2000000 x double], [2000000 x double]* @a, i64 0, i64 %21
  %23 = load double, double* %22, align 8, !tbaa !27
  %24 = fadd double %20, %23
  %25 = fmul double %24, 3.333300e-01
  %26 = getelementptr inbounds [2000000 x double], [2000000 x double]* @b, i64 0, i64 %14
  store double %25, double* %26, align 8, !tbaa !27
  %27 = getelementptr inbounds [2000000 x double], [2000000 x double]* @b, i64 0, i64 %15
  %28 = bitcast double* %27 to i64*
  %29 = load i64, i64* %28, align 8, !tbaa !27
  %30 = bitcast double* %16 to i64*
  store i64 %29, i64* %30, align 8, !tbaa !27
  %31 = add nuw nsw i64 %13, 1
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %32, %3
  br i1 %33, label %34, label %12

; <label>:34:                                     ; preds = %12
  %35 = load i64, i64* bitcast (double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @b, i64 0, i64 1999998) to i64*), align 16, !tbaa !27
  store i64 %35, i64* bitcast (double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @a, i64 0, i64 1999998) to i64*), align 16, !tbaa !27
  %36 = add nuw nsw i64 %2, 1
  %37 = add nuw nsw i64 %4, 2
  %38 = add nuw nsw i32 %3, 2
  %39 = icmp eq i64 %36, 1000
  br i1 %39, label %40, label %1

; <label>:40:                                     ; preds = %34
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8** nocapture readonly) #0 {
  tail call void @init_array()
  %3 = icmp slt i32 %0, 3
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str.9, i64 0, i64 0))
  br label %6

; <label>:6:                                      ; preds = %4, %2
  %7 = getelementptr inbounds i8*, i8** %1, i64 1
  %8 = load i8*, i8** %7, align 8, !tbaa !35
  %9 = tail call i32 @atoi(i8* %8) #13
  store i32 1, i32* @dimcount, align 4, !tbaa !37
  store i32 %9, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @psgdim, i64 0, i64 0), align 4, !tbaa !37
  %10 = sext i32 %9 to i64
  store i64 %10, i64* @dim0, align 8, !tbaa !39
  tail call void @func()
  %11 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.61, i64 0, i64 0))
  %12 = icmp eq %struct._IO_FILE* %11, null
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %6
  tail call void @print_array()
  br label %14

; <label>:14:                                     ; preds = %6, %13
  %15 = icmp eq i32 %0, 4
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds i8*, i8** %1, i64 3
  %18 = load i8*, i8** %17, align 8, !tbaa !35
  tail call void @print_data_1d(i32 2000000, double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @a, i64 0, i64 0), i8* %18, i32 1) #2
  %19 = load i8*, i8** %17, align 8, !tbaa !35
  tail call void @print_data_1d(i32 2000000, double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @b, i64 0, i64 0), i8* %19, i32 0) #2
  br label %20

; <label>:20:                                     ; preds = %16, %14
  %21 = load i64, i64* @detectCounter, align 8, !tbaa !39
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %20
  %24 = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @str.8, i64 0, i64 0))
  br label %27

; <label>:25:                                     ; preds = %20
  %26 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.62, i64 0, i64 0))
  br label %27

; <label>:27:                                     ; preds = %25, %23
  %28 = tail call i32 @printFaultSitesData() #2
  %29 = tail call i32 @printFaultInjectionData() #2
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }
attributes #14 = { cold }

!llvm.ident = !{!0, !0, !0, !0}

!0 = !{!"clang version 3.9.0 (trunk)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long long", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !3, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"_ZTS6FIAlgo", !3, i64 0}
!13 = !{!3, !3, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !3, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !3, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"_ZTS11FIDirection", !3, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"_ZTS11FIByteRange", !3, i64 0}
!22 = !{!23, !10, i64 0}
!23 = !{!"_ZTS7timeval", !10, i64 0, !10, i64 8}
!24 = !{!23, !10, i64 8}
!25 = !{!26, !26, i64 0}
!26 = !{!"short", !3, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"double", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{!32, !33, i64 0}
!32 = !{!"timeval", !33, i64 0, !33, i64 8}
!33 = !{!"long", !29, i64 0}
!34 = !{!32, !33, i64 8}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !29, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !29, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"long long", !29, i64 0}

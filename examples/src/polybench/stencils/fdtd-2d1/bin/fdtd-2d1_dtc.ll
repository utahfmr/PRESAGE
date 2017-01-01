; ModuleID = 'fdtd-2d1_dtc.bc'
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
@.str.4 = private unnamed_addr constant [19 x i8] c"Returned from here\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"fault site count:%lld\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"\0AError:Coudn't find the file: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"fault injection count:%lld\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\0Atimestamp:%lu\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"\0Aerror detection count:%lld\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"Time;\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"%ld;\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"%s;\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%d;\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"%c;\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"%lld;\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"%f;\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"%lf;\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str.64 = private unnamed_addr constant [44 x i8] c"\0AError: Invalid value provided for FI Algo!\00"
@switch.table = private unnamed_addr constant [5 x i32] [i32 7, i32 15, i32 31, i32 63, i32 31]
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@str.62 = private unnamed_addr constant [42 x i8] c"\0AError:Coudn't find fi param file \22fi.in\22\00"
@.str.14 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@str = private unnamed_addr constant [47 x i8] c"\0AError:memory allocation failed for dynFSIdx!!\00"
@.str.16 = private unnamed_addr constant [11 x i8] c"Instr_Name\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Original_Value\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Corrupted_Value\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Bit_Position\00", align 1
@.str.42 = private unnamed_addr constant [57 x i8] c"fialg!=FI_ERROR && \22Invalid fault injection algorithm!!\22\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"/home/arnabd/apps/VULFI//runtime/Corrupt.C\00", align 1
@__PRETTY_FUNCTION__._Z11checkParamsv = private unnamed_addr constant [19 x i8] c"void checkParams()\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"fibr!=FIBR_ERROR && \22Invalid byte range!!\22\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"fid!=FID_ERROR && \22Invalid byte direction!!\22\00", align 1
@.str.46 = private unnamed_addr constant [71 x i8] c"((bu>=bl && bu<=63 && bl >=0)||fialg!=FI_ABR) && \22Invalid bit range!!\22\00", align 1
@.str.47 = private unnamed_addr constant [62 x i8] c"ef<=tf&&ef>0&&tf>0 && \22Invalid fault injection probability!!\22\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"(pfs==0||pfs==1) && \22Invalid value for pfs flag!!\22\00", align 1
@str.63 = private unnamed_addr constant [47 x i8] c"\0AError:memory allocation failed for dynFSIdx!!\00"
@.str.20 = private unnamed_addr constant [4 x i8] c"fia\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"CBR\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"ABR\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"MSK\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"fib\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"fid\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"LSB\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"MSB\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"fiu\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"fil\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"pn\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"pfs\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@_ZZ18getStrFieldByIndexPcPKciE4temp = linkonce_odr global [1024 x i8] zeroinitializer, comdat, align 16
@.str.13 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1.14 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2.15 = private unnamed_addr constant [7 x i8] c"%lld,\0A\00", align 1
@.str.3.16 = private unnamed_addr constant [6 x i8] c"%lf,\0A\00", align 1
@.str.4.17 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@init_flag = global i32 0, align 4
@dimcount = global i32 0, align 4
@psgdim = global [10 x i32] zeroinitializer, align 16
@prf_data = global [512 x [20 x i64]] zeroinitializer, align 16
@dim0 = global i64 0, align 8
@dim1 = global i64 0, align 8
@dim2 = global i64 0, align 8
@.str.49 = private unnamed_addr constant [78 x i8] c"\0AINFO: Gep id %lld has actual rel id is %lld where as computed rel id is %lld\00", align 1
@.str.1.50 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2.51 = private unnamed_addr constant [27 x i8] c"MAX_UNIQUE_COUNT_EXCEEDED\0A\00", align 1
@.str.3.52 = private unnamed_addr constant [9 x i8] c"%u:%lld \00", align 1
@.str.4.53 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.5.54 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.6.55 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7.56 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@t_start = common global double 0.000000e+00, align 8
@t_end = common global double 0.000000e+00, align 8
@str.4 = private unnamed_addr constant [32 x i8] c"\0AInfo: Insufficient arguments!\0A\00"
@str.3 = private unnamed_addr constant [27 x i8] c"\0AInfo: Soft error detected\00"
@str.57 = private unnamed_addr constant [31 x i8] c"\0AInfo: No Soft Errors detected\00"

; Function Attrs: noinline nounwind uwtable
define i32 @printFaultSitesData() #0 {
  %1 = load i32, i32* @pfs, align 4, !tbaa !1
  switch i32 %1, label %4 [
    i32 -1, label %2
    i32 0, label %2
  ]

; <label>:2:                                      ; preds = %0, %0
  %3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %27

; <label>:4:                                      ; preds = %0
  %5 = load i64, i64* @fsIntTy1, align 8, !tbaa !5
  %6 = load i64, i64* @fsIntTy16, align 8, !tbaa !5
  %7 = add nsw i64 %6, %5
  %8 = load i64, i64* @fsIntTy32, align 8, !tbaa !5
  %9 = add nsw i64 %7, %8
  %10 = load i64, i64* @fsIntTy64, align 8, !tbaa !5
  %11 = add nsw i64 %9, %10
  %12 = load i64, i64* @fsFloatTy, align 8, !tbaa !5
  %13 = add nsw i64 %11, %12
  %14 = load i64, i64* @fsDoubleTy, align 8, !tbaa !5
  %15 = add nsw i64 %13, %14
  %16 = load i8*, i8** @fsStat, align 8, !tbaa !7
  %17 = tail call %struct._IO_FILE* @_Z5getFDPKcS0_(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %15)
  %19 = icmp eq %struct._IO_FILE* %17, null
  br i1 %19, label %22, label %20

; <label>:20:                                     ; preds = %4
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %17)
  br label %22

; <label>:22:                                     ; preds = %4, %20
  %23 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  %24 = icmp eq i64* %23, null
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %22
  %26 = bitcast i64* %23 to i8*
  tail call void @free(i8* %26) #6
  store i64* null, i64** @dynFSIdx, align 8, !tbaa !7
  br label %27

; <label>:27:                                     ; preds = %25, %22, %2
  %28 = phi i32 [ -1, %2 ], [ 0, %22 ], [ 0, %25 ]
  ret i32 %28
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct._IO_FILE* @_Z5getFDPKcS0_(i8*, i8*) #0 comdat {
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* %0)
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
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

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
  %15 = tail call %struct._IO_FILE* @_Z5getFDPKcS0_(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %13)
  %17 = load i64, i64* @execKey, align 8, !tbaa !9
  %18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* @detectCounter, align 8, !tbaa !5
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i64 %19)
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
  tail call void @free(i8* %28) #6
  store i64* null, i64** @dynFSIdx, align 8, !tbaa !7
  br label %29

; <label>:29:                                     ; preds = %27, %24, %0, %0
  %30 = phi i32 [ -1, %0 ], [ -1, %0 ], [ 0, %24 ], [ 0, %27 ]
  ret i32 %30
}

; Function Attrs: noinline uwtable
define i32 @_Z21injectSoftErrorIntTy1iPKci(i32, i8*, i32) #3 {
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
  call void @llvm.lifetime.start(i64 4, i8* %12) #6
  %13 = load i32, i32* %4, align 4, !tbaa !1
  store i32 %13, i32* %6, align 4, !tbaa !1
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #6
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %27, i8* nonnull %14, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %34

; <label>:34:                                     ; preds = %26, %31, %23, %18, %11
  %35 = load i32, i32* %4, align 4, !tbaa !1
  call void @llvm.lifetime.end(i64 4, i8* %14) #6
  call void @llvm.lifetime.end(i64 4, i8* %12) #6
  ret i32 %35
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14updateFIParamsv() #3 comdat {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #6
  store i8* null, i8** %1, align 8, !tbaa !7
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #6
  store i64 0, i64* %2, align 8, !tbaa !9
  %5 = tail call i64 @time(i64* null) #6
  %6 = trunc i64 %5 to i32
  tail call void @srand(i32 %6) #6
  tail call void @_Z15updateTimeStampv()
  %7 = load i8*, i8** @fiParams, align 8, !tbaa !7
  %8 = tail call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %0
  %11 = call i64 @getline(i8** nonnull %1, i64* nonnull %2, %struct._IO_FILE* nonnull %8)
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %22, label %15

; <label>:13:                                     ; preds = %0
  %14 = tail call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.62, i64 0, i64 0))
  tail call void @exit(i32 -1) #11
  unreachable

; <label>:15:                                     ; preds = %10, %15
  %16 = load i8*, i8** %1, align 8, !tbaa !7
  %17 = call i8* @_Z18getStrFieldByIndexPcPKci(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 0)
  %18 = load i8*, i8** %1, align 8, !tbaa !7
  %19 = call i8* @_Z18getStrFieldByIndexPcPKci(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 1)
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
  %53 = call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str, i64 0, i64 0))
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %61

; <label>:61:                                     ; preds = %54, %60
  call void @_Z11printParamsv()
  call void @_Z11checkParamsv()
  store i32 1, i32* @fidatardflag, align 4, !tbaa !1
  %62 = call i32 @fclose(%struct._IO_FILE* nonnull %8)
  call void @llvm.lifetime.end(i64 8, i8* %4) #6
  call void @llvm.lifetime.end(i64 8, i8* %3) #6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z9checkMaskPvi(i8*, i32) #0 comdat {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #6
  store i64 0, i64* %3, align 8, !tbaa !5
  %5 = sext i32 %1 to i64
  %6 = call i32 @memcmp(i8* %0, i8* %4, i64 %5) #13
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  call void @llvm.lifetime.end(i64 8, i8* %4) #6
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
  call void @llvm.lifetime.start(i64 1024, i8* %10) #6
  %11 = tail call i64 @strlen(i8* %0) #13
  %12 = icmp eq i32 %4, 7
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %6
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %9)
  br label %18

; <label>:15:                                     ; preds = %6
  %16 = load i64, i64* @execKey, align 8, !tbaa !9
  %17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i64 %16)
  br label %18

; <label>:18:                                     ; preds = %15, %13
  %19 = bitcast [1024 x i8]* %7 to i16*
  store i16 34, i16* %19, align 16
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 1
  %21 = and i64 %11, 4294967295
  %22 = call i8* @strncpy(i8* %20, i8* %0, i64 %21) #6
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %21
  %24 = bitcast i8* %23 to i16*
  store i16 34, i16* %24, align 1
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* %10)
  %26 = or i32 %4, 2
  %27 = icmp eq i32 %26, 2
  %28 = icmp eq i32 %4, 3
  %29 = or i1 %28, %27
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %18
  %31 = bitcast i8* %1 to i32*
  %32 = load i32, i32* %31, align 4, !tbaa !1
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i32 %32)
  %34 = bitcast i8* %2 to i32*
  %35 = load i32, i32* %34, align 4, !tbaa !1
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i32 %35)
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
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0), i32 %40)
  %42 = load i8, i8* %2, align 1, !tbaa !13
  %43 = sext i8 %42 to i32
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0), i32 %43)
  br label %72

; <label>:45:                                     ; preds = %37
  %46 = bitcast i8* %1 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !5
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i64 %47)
  %49 = bitcast i8* %2 to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !5
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i64 %50)
  br label %72

; <label>:52:                                     ; preds = %37
  %53 = bitcast i8* %1 to float*
  %54 = load float, float* %53, align 4, !tbaa !14
  %55 = fpext float %54 to double
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), double %55)
  %57 = bitcast i8* %2 to float*
  %58 = load float, float* %57, align 4, !tbaa !14
  %59 = fpext float %58 to double
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), double %59)
  br label %72

; <label>:61:                                     ; preds = %37
  %62 = bitcast i8* %1 to double*
  %63 = load double, double* %62, align 8, !tbaa !16
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), double %63)
  %65 = bitcast i8* %2 to double*
  %66 = load double, double* %65, align 8, !tbaa !16
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), double %66)
  br label %72

; <label>:68:                                     ; preds = %37
  br i1 %12, label %69, label %75

; <label>:69:                                     ; preds = %68
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* %1)
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* %2)
  br label %73

; <label>:72:                                     ; preds = %38, %52, %61, %45, %30
  br i1 %12, label %73, label %75

; <label>:73:                                     ; preds = %69, %72
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i8* %3)
  br label %79

; <label>:75:                                     ; preds = %68, %72
  %76 = bitcast i8* %3 to i32*
  %77 = load i32, i32* %76, align 4, !tbaa !1
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0), i32 %77)
  br label %79

; <label>:79:                                     ; preds = %75, %73
  %80 = icmp eq %struct._IO_FILE* %9, null
  br i1 %80, label %83, label %81

; <label>:81:                                     ; preds = %79
  %82 = call i32 @fclose(%struct._IO_FILE* nonnull %9)
  br label %83

; <label>:83:                                     ; preds = %79, %81
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %10) #6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

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
  %12 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.64, i64 0, i64 0))
  tail call void @exit(i32 -1) #11
  unreachable

; <label>:13:                                     ; preds = %3, %8, %6, %4
  %14 = phi i32 [ -1, %3 ], [ %10, %8 ], [ %7, %6 ], [ %5, %4 ]
  ret i32 %14
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

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
  %26 = tail call i32 @rand() #6
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
  %22 = tail call i32 @rand() #6
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
declare i32 @puts(i8* nocapture) #6

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
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z15updateTimeStampv() #0 comdat {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #6
  %3 = call i32 @gettimeofday(%struct.timeval* nonnull %1, %struct.timezone* null) #6
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = mul nsw i64 %5, 1000000
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !24
  %9 = add nsw i64 %6, %8
  store i64 %9, i64* @execKey, align 8, !tbaa !9
  call void @llvm.lifetime.end(i64 16, i8* %2) #6
  ret void
}

declare i64 @getline(i8**, i64*, %struct._IO_FILE*) #8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i8* @_Z18getStrFieldByIndexPcPKci(i8*, i8*, i32) #0 comdat {
  %4 = tail call i8* @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZZ18getStrFieldByIndexPcPKciE4temp, i64 0, i64 0), i8* %0) #6
  %5 = tail call i8* @strtok(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_ZZ18getStrFieldByIndexPcPKciE4temp, i64 0, i64 0), i8* %1) #6
  %6 = icmp eq i8* %5, null
  br i1 %6, label %15, label %7

; <label>:7:                                      ; preds = %3, %12
  %8 = phi i32 [ %10, %12 ], [ -1, %3 ]
  %9 = phi i8* [ %13, %12 ], [ %5, %3 ]
  %10 = add nsw i32 %8, 1
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %7
  %13 = tail call i8* @strtok(i8* null, i8* %1) #6
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %7

; <label>:15:                                     ; preds = %7, %12, %3
  %16 = phi i8* [ null, %3 ], [ %9, %7 ], [ null, %12 ]
  ret i8* %16
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z13processParamsPKcS0_(i8*, i8*) #0 comdat {
  %3 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5
  store i32 0, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %9
  store i32 1, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:13:                                     ; preds = %9
  %14 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  store i32 2, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:17:                                     ; preds = %13
  store i32 3, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:18:                                     ; preds = %2
  %19 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %54

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  store i32 1, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25
  store i32 2, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:29:                                     ; preds = %25
  %30 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29
  store i32 3, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:33:                                     ; preds = %29
  %34 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %33
  store i32 4, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %37
  store i32 5, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:41:                                     ; preds = %37
  %42 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41
  store i32 6, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:45:                                     ; preds = %41
  %46 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %45
  store i32 7, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:49:                                     ; preds = %45
  %50 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  store i32 8, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:53:                                     ; preds = %49
  store i32 9, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:54:                                     ; preds = %18
  %55 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

; <label>:57:                                     ; preds = %54
  %58 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  store i32 0, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:61:                                     ; preds = %57
  %62 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0)) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %61
  store i32 1, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:65:                                     ; preds = %61
  store i32 2, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:66:                                     ; preds = %54
  %67 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %66
  %70 = tail call i32 @atoi(i8* %1) #13
  store i32 %70, i32* @bu, align 4, !tbaa !1
  br label %96

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0)) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

; <label>:74:                                     ; preds = %71
  %75 = tail call i32 @atoi(i8* %1) #13
  store i32 %75, i32* @bl, align 4, !tbaa !1
  br label %96

; <label>:76:                                     ; preds = %71
  %77 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0)) #13
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %76
  %80 = tail call i64 @atoll(i8* %1) #13
  store i64 %80, i64* @ef, align 8, !tbaa !5
  br label %96

; <label>:81:                                     ; preds = %76
  %82 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0)) #13
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

; <label>:84:                                     ; preds = %81
  %85 = tail call i64 @atoll(i8* %1) #13
  store i64 %85, i64* @tf, align 8, !tbaa !5
  br label %96

; <label>:86:                                     ; preds = %81
  %87 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

; <label>:89:                                     ; preds = %86
  %90 = tail call i32 @atoi(i8* %1) #13
  store i32 %90, i32* @pfs, align 4, !tbaa !1
  br label %96

; <label>:91:                                     ; preds = %86
  %92 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0)) #13
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
  %8 = tail call noalias i8* @calloc(i64 %7, i64 8) #6
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
  %19 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str.63, i64 0, i64 0))
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
  %2 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
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
  tail call void @__assert_fail(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i64 0, i64 0), i32 292, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* @fibr, align 4, !tbaa !20
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %4
  tail call void @__assert_fail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i64 0, i64 0), i32 293, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* @fid, align 4, !tbaa !18
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  tail call void @__assert_fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i64 0, i64 0), i32 294, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
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
  tail call void @__assert_fail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i64 0, i64 0), i32 295, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
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
  tail call void @__assert_fail(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i64 0, i64 0), i32 296, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:32:                                     ; preds = %23
  %33 = load i32, i32* @pfs, align 4, !tbaa !1
  %34 = or i32 %33, 1
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %32
  tail call void @__assert_fail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i64 0, i64 0), i32 297, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:37:                                     ; preds = %32
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_Z12gen64bitRandv() #0 comdat {
  br label %1

; <label>:1:                                      ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %9, %1 ]
  %3 = phi i64 [ 0, %0 ], [ %8, %1 ]
  %4 = tail call i32 @rand() #6
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
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: nounwind readonly
declare i64 @atoll(i8* nocapture) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

; Function Attrs: noinline uwtable
define i32 @_Z21injectSoftErrorIntTy8cPKcc(i8 signext, i8*, i8 signext) #3 {
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
  call void @llvm.lifetime.start(i64 1, i8* nonnull %6) #6
  %12 = load i8, i8* %4, align 1, !tbaa !13
  store i8 %12, i8* %6, align 1, !tbaa !13
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #6
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* nonnull %6, i8* nonnull %4, i8* nonnull %13, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %31

; <label>:31:                                     ; preds = %24, %28, %21, %16, %11
  %32 = load i8, i8* %4, align 1, !tbaa !13
  %33 = sext i8 %32 to i32
  call void @llvm.lifetime.end(i64 4, i8* %13) #6
  call void @llvm.lifetime.end(i64 1, i8* nonnull %6) #6
  ret i32 %33
}

; Function Attrs: noinline uwtable
define signext i16 @_Z22injectSoftErrorIntTy16sPKcs(i16 signext, i8*, i16 signext) #3 {
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
  call void @llvm.lifetime.start(i64 2, i8* %12) #6
  %13 = load i16, i16* %4, align 2, !tbaa !25
  store i16 %13, i16* %6, align 2, !tbaa !25
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #6
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %27, i8* nonnull %14, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %34

; <label>:34:                                     ; preds = %26, %31, %23, %18, %11
  %35 = load i16, i16* %4, align 2, !tbaa !25
  call void @llvm.lifetime.end(i64 4, i8* %14) #6
  call void @llvm.lifetime.end(i64 2, i8* %12) #6
  ret i16 %35
}

; Function Attrs: noinline uwtable
define i32 @_Z22injectSoftErrorIntTy32iPKci(i32, i8*, i32) #3 {
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
  call void @llvm.lifetime.start(i64 4, i8* %12) #6
  %13 = load i32, i32* %4, align 4, !tbaa !1
  store i32 %13, i32* %6, align 4, !tbaa !1
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #6
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %27, i8* nonnull %14, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %34

; <label>:34:                                     ; preds = %26, %31, %23, %18, %11
  %35 = load i32, i32* %4, align 4, !tbaa !1
  call void @llvm.lifetime.end(i64 4, i8* %14) #6
  call void @llvm.lifetime.end(i64 4, i8* %12) #6
  ret i32 %35
}

; Function Attrs: noinline uwtable
define i64 @_Z22injectSoftErrorIntTy64xPKcx(i64, i8*, i64) #3 {
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
  call void @llvm.lifetime.start(i64 8, i8* %12) #6
  %13 = load i64, i64* %4, align 8, !tbaa !5
  store i64 %13, i64* %6, align 8, !tbaa !5
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #6
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %27, i8* nonnull %14, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %34

; <label>:34:                                     ; preds = %26, %31, %23, %18, %11
  %35 = load i64, i64* %4, align 8, !tbaa !5
  call void @llvm.lifetime.end(i64 4, i8* %14) #6
  call void @llvm.lifetime.end(i64 8, i8* %12) #6
  ret i64 %35
}

; Function Attrs: noinline uwtable
define float @_Z22injectSoftErrorFloatTyfPKcf(float, i8*, float) #3 {
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
  call void @llvm.lifetime.start(i64 4, i8* %12) #6
  %13 = bitcast float* %4 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !14
  %15 = bitcast float* %6 to i32*
  store i32 %14, i32* %15, align 4, !tbaa !14
  %16 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #6
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %29, i8* nonnull %16, i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %36

; <label>:36:                                     ; preds = %28, %33, %25, %20, %11
  %37 = load float, float* %4, align 4, !tbaa !14
  call void @llvm.lifetime.end(i64 4, i8* %16) #6
  call void @llvm.lifetime.end(i64 4, i8* %12) #6
  ret float %37
}

; Function Attrs: noinline uwtable
define double @_Z23injectSoftErrorDoubleTydPKcd(double, i8*, double) #3 {
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
  call void @llvm.lifetime.start(i64 8, i8* %12) #6
  %13 = bitcast double* %4 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !16
  %15 = bitcast double* %6 to i64*
  store i64 %14, i64* %15, align 8, !tbaa !16
  %16 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #6
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %29, i8* nonnull %16, i32 6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %36

; <label>:36:                                     ; preds = %28, %33, %25, %20, %11
  %37 = load double, double* %4, align 8, !tbaa !16
  call void @llvm.lifetime.end(i64 4, i8* %16) #6
  call void @llvm.lifetime.end(i64 8, i8* %12) #6
  ret double %37
}

; Function Attrs: noinline nounwind uwtable
define i32 @file_exists(i8* nocapture readonly) #0 {
  %2 = tail call i32 @access(i8* %0, i32 0) #6
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
  %6 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.14, i64 0, i64 0))
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ]
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.15, i64 0, i64 0), i64 %1)
  %12 = tail call i32 @fclose(%struct._IO_FILE* %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @writeOVRData(i8* nocapture readonly, double, i32) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.14, i64 0, i64 0))
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ]
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.16, i64 0, i64 0), double %1)
  %12 = tail call i32 @fclose(%struct._IO_FILE* %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @print_data_3d(i32, i32, i32, double* nocapture readonly, i8* nocapture readonly, i32) #0 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.14, i64 0, i64 0))
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
  %34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.17, i64 0, i64 0), double %33)
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
  %8 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %11

; <label>:9:                                      ; preds = %5
  %10 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.14, i64 0, i64 0))
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
  %26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.17, i64 0, i64 0), double %25)
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
  %7 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %10

; <label>:8:                                      ; preds = %4
  %9 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.14, i64 0, i64 0))
  br label %10

; <label>:10:                                     ; preds = %8, %6
  %11 = phi %struct._IO_FILE* [ %7, %6 ], [ %9, %8 ]
  %12 = icmp sgt i32 %0, 0
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %10, %13
  %14 = phi i64 [ %18, %13 ], [ 0, %10 ]
  %15 = getelementptr inbounds double, double* %1, i64 %14
  %16 = load double, double* %15, align 8, !tbaa !27
  %17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.17, i64 0, i64 0), double %16)
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
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.49, i64 0, i64 0), i64 %0, i64 %1, i64 %2)
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
  %21 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.50, i64 0, i64 0))
  br label %27

; <label>:22:                                     ; preds = %17
  %23 = icmp eq i32 %18, 20
  %24 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.50, i64 0, i64 0))
  br i1 %23, label %25, label %27

; <label>:25:                                     ; preds = %22
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2.51, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %24)
  br label %64

; <label>:27:                                     ; preds = %20, %22
  %28 = phi i32 [ %10, %20 ], [ %18, %22 ]
  %29 = phi %struct._IO_FILE* [ %21, %20 ], [ %24, %22 ]
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 %30
  %32 = load i64, i64* %31, align 8, !tbaa !5
  %33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.52, i64 0, i64 0), i32 %28, i64 %32)
  %34 = load i32, i32* @dimcount, align 4, !tbaa !1
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %27
  %37 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.53, i64 0, i64 0), i32 %34)
  br label %40

; <label>:38:                                     ; preds = %27
  %39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5.54, i64 0, i64 0), i32 %34)
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
  %52 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.55, i64 0, i64 0), i32 %51)
  br label %60

; <label>:53:                                     ; preds = %43
  %54 = icmp eq i32 %45, %46
  br i1 %54, label %55, label %60

; <label>:55:                                     ; preds = %53
  %56 = zext i32 %45 to i64
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* @psgdim, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !1
  %59 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7.56, i64 0, i64 0), i32 %58)
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
define i32 @main(i32, i8** nocapture readonly) #0 {
  %3 = icmp slt i32 %0, 3
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str.4, i64 0, i64 0))
  br label %6

; <label>:6:                                      ; preds = %4, %2
  %7 = tail call noalias i8* @malloc(i64 33280) #6
  %8 = bitcast i8* %7 to double*
  %9 = tail call noalias i8* @malloc(i64 33280) #6
  %10 = bitcast i8* %9 to double*
  %11 = tail call noalias i8* @malloc(i64 32768) #6
  %12 = bitcast i8* %11 to double*
  %13 = ptrtoint i8* %7 to i64
  %14 = getelementptr inbounds i8, i8* %7, i64 33272
  %15 = ptrtoint i8* %14 to i64
  tail call void @psgProtect(double* %8, i64 %13, i64 %15) #6
  %16 = ptrtoint i8* %9 to i64
  %17 = getelementptr inbounds i8, i8* %9, i64 33272
  %18 = ptrtoint i8* %17 to i64
  tail call void @psgProtect(double* %10, i64 %16, i64 %18) #6
  %19 = ptrtoint i8* %11 to i64
  %20 = getelementptr inbounds i8, i8* %11, i64 32760
  %21 = ptrtoint i8* %20 to i64
  tail call void @psgProtect(double* %12, i64 %19, i64 %21) #6
  tail call fastcc void @init_array(double* %8, double* %10, double* %12)
  tail call fastcc void @func(double* %8, double* %10, double* %12)
  %22 = icmp eq i32 %0, 4
  br i1 %22, label %23, label %28

; <label>:23:                                     ; preds = %6
  %24 = getelementptr inbounds i8*, i8** %1, i64 3
  %25 = load i8*, i8** %24, align 8, !tbaa !31
  tail call void @print_data_2d(i32 64, i32 65, double* %8, i8* %25, i32 1) #6
  %26 = load i8*, i8** %24, align 8, !tbaa !31
  tail call void @print_data_2d(i32 65, i32 64, double* %10, i8* %26, i32 0) #6
  %27 = load i8*, i8** %24, align 8, !tbaa !31
  tail call void @print_data_2d(i32 64, i32 64, double* %12, i8* %27, i32 0) #6
  br label %28

; <label>:28:                                     ; preds = %23, %6
  %29 = load i64, i64* @detectCounter, align 8, !tbaa !33
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %33, label %31

; <label>:31:                                     ; preds = %28
  %32 = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @str.3, i64 0, i64 0))
  br label %35

; <label>:33:                                     ; preds = %28
  %34 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.57, i64 0, i64 0))
  br label %35

; <label>:35:                                     ; preds = %33, %31
  tail call void @free(i8* %7) #6
  tail call void @free(i8* %9) #6
  tail call void @free(i8* %11) #6
  %36 = tail call i32 @printFaultSitesData() #6
  %37 = tail call i32 @printFaultInjectionData() #6
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @init_array(double* nocapture, double* nocapture, double* nocapture) unnamed_addr #9 {
  %4 = bitcast double* %2 to i8*
  %5 = bitcast double* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 33280, i32 8, i1 false)
  %6 = bitcast double* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 33280, i32 8, i1 false)
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = phi i64 [ 0, %3 ], [ %13, %7 ]
  %9 = trunc i64 %8 to i32
  %10 = sitofp i32 %9 to double
  %11 = fmul double %10, 1.562500e-02
  %12 = getelementptr inbounds double, double* %1, i64 %8
  store double %11, double* %12, align 8, !tbaa !27
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, 64
  br i1 %14, label %15, label %7

; <label>:15:                                     ; preds = %7
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 32768, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @func(double*, double*, double*) unnamed_addr #9 {
  %4 = getelementptr inbounds double, double* %1, i64 60
  %5 = getelementptr inbounds double, double* %1, i64 61
  %6 = getelementptr inbounds double, double* %1, i64 62
  %7 = getelementptr inbounds double, double* %0, i64 1
  %8 = getelementptr inbounds double, double* %1, i64 64
  %9 = getelementptr inbounds double, double* %1, i64 66
  %10 = getelementptr inbounds double, double* %2, i64 66
  %11 = getelementptr inbounds double, double* %2, i64 2
  %12 = getelementptr inbounds double, double* %0, i64 127
  %13 = getelementptr inbounds double, double* %2, i64 126
  %14 = getelementptr inbounds double, double* %2, i64 62
  %15 = getelementptr inbounds double, double* %1, i64 67
  %16 = getelementptr inbounds double, double* %2, i64 67
  %17 = getelementptr inbounds double, double* %2, i64 3
  %18 = getelementptr inbounds double, double* %0, i64 128
  %19 = getelementptr inbounds double, double* %2, i64 127
  %20 = getelementptr inbounds double, double* %2, i64 63
  %21 = getelementptr inbounds double, double* %1, i64 63
  %22 = getelementptr inbounds double, double* %2, i64 1
  %23 = getelementptr inbounds double, double* %0, i64 2
  %24 = getelementptr inbounds double, double* %1, i64 65
  %25 = getelementptr inbounds double, double* %1, i64 1
  %26 = getelementptr inbounds double, double* %2, i64 1921
  %27 = getelementptr inbounds double, double* %0, i64 1952
  %28 = getelementptr inbounds double, double* %0, i64 1951
  %29 = getelementptr inbounds double, double* %1, i64 1985
  %30 = getelementptr inbounds double, double* %1, i64 1921
  br label %31

; <label>:31:                                     ; preds = %632, %3
  %32 = phi i32 [ 0, %3 ], [ %633, %632 ]
  %phibase_ = phi double* [ %phibase_123, %632 ], [ %28, %3 ]
  %phidx_ = phi i64 [ %phidx_124, %632 ], [ 1951, %3 ]
  %phibase_133 = phi double* [ %phibase_257, %632 ], [ %30, %3 ]
  %phidx_134 = phi i64 [ %phidx_258, %632 ], [ 1921, %3 ]
  %phibase_267 = phi double* [ %phibase_391, %632 ], [ %26, %3 ]
  %phidx_268 = phi i64 [ %phidx_392, %632 ], [ 1921, %3 ]
  %33 = sitofp i32 %32 to double
  br label %34

; <label>:34:                                     ; preds = %34, %31
  %35 = phi i64 [ 0, %31 ], [ %36, %34 ]
  %phibase_1 = phi double* [ %phibase_1, %34 ], [ %phibase_, %31 ]
  %phidx_2 = phi i64 [ %phidx_2, %34 ], [ %phidx_, %31 ]
  %phibase_135 = phi double* [ %newgep_, %34 ], [ %phibase_133, %31 ]
  %phidx_136 = phi i64 [ %35, %34 ], [ %phidx_134, %31 ]
  %phibase_269 = phi double* [ %phibase_269, %34 ], [ %phibase_267, %31 ]
  %phidx_270 = phi i64 [ %phidx_270, %34 ], [ %phidx_268, %31 ]
  %relidx_ = sub i64 %35, %phidx_136
  %newgep_ = getelementptr double, double* %phibase_135, i64 %relidx_
  store double %33, double* %newgep_, align 8, !tbaa !27
  %36 = add nuw nsw i64 %35, 1
  %37 = icmp eq i64 %36, 60
  br i1 %37, label %38, label %34

; <label>:38:                                     ; preds = %34
  %phibase_3 = phi double* [ %phibase_1, %34 ]
  %phidx_4 = phi i64 [ %phidx_2, %34 ]
  %phibase_137 = phi double* [ %newgep_, %34 ]
  %phidx_138 = phi i64 [ %35, %34 ]
  %phibase_271 = phi double* [ %phibase_269, %34 ]
  %phidx_272 = phi i64 [ %phidx_270, %34 ]
  store double %33, double* %4, align 8, !tbaa !27
  br label %39

; <label>:39:                                     ; preds = %39, %38
  %40 = phi i64 [ 1, %38 ], [ %48, %39 ]
  %phibase_5 = phi double* [ %newgep_402, %39 ], [ %phibase_3, %38 ]
  %phidx_6 = phi i64 [ %40, %39 ], [ %phidx_4, %38 ]
  %phibase_139 = phi double* [ %phibase_139, %39 ], [ %phibase_137, %38 ]
  %phidx_140 = phi i64 [ %phidx_140, %39 ], [ %phidx_138, %38 ]
  %phibase_273 = phi double* [ %newgep_406, %39 ], [ %phibase_271, %38 ]
  %phidx_274 = phi i64 [ %43, %39 ], [ %phidx_272, %38 ]
  %relidx_401 = sub i64 %40, %phidx_6
  %newgep_402 = getelementptr double, double* %phibase_5, i64 %relidx_401
  %41 = load double, double* %newgep_402, align 8, !tbaa !27
  %relidx_403 = sub i64 %40, %phidx_274
  %newgep_404 = getelementptr double, double* %phibase_273, i64 %relidx_403
  %42 = load double, double* %newgep_404, align 8, !tbaa !27
  %43 = add nuw nsw i64 %40, -64
  %relidx_405 = sub i64 %43, %40
  %newgep_406 = getelementptr double, double* %newgep_404, i64 %relidx_405
  %44 = load double, double* %newgep_406, align 8, !tbaa !27
  %45 = fsub double %42, %44
  %46 = fmul double %45, 5.000000e-01
  %47 = fsub double %41, %46
  store double %47, double* %newgep_402, align 8, !tbaa !27
  %48 = add nuw nsw i64 %40, 1
  %49 = icmp eq i64 %48, 64
  br i1 %49, label %50, label %39

; <label>:50:                                     ; preds = %39
  %phibase_7 = phi double* [ %newgep_402, %39 ]
  %phidx_8 = phi i64 [ %40, %39 ]
  %phibase_141 = phi double* [ %phibase_139, %39 ]
  %phidx_142 = phi i64 [ %phidx_140, %39 ]
  %phibase_275 = phi double* [ %newgep_406, %39 ]
  %phidx_276 = phi i64 [ %43, %39 ]
  store double %33, double* %5, align 8, !tbaa !27
  store double %33, double* %6, align 8, !tbaa !27
  br label %51

; <label>:51:                                     ; preds = %51, %50
  %52 = phi i64 [ 1, %50 ], [ %61, %51 ]
  %phibase_9 = phi double* [ %newgep_408, %51 ], [ %phibase_7, %50 ]
  %phidx_10 = phi i64 [ %53, %51 ], [ %phidx_8, %50 ]
  %phibase_143 = phi double* [ %phibase_143, %51 ], [ %phibase_141, %50 ]
  %phidx_144 = phi i64 [ %phidx_144, %51 ], [ %phidx_142, %50 ]
  %phibase_277 = phi double* [ %newgep_412, %51 ], [ %phibase_275, %50 ]
  %phidx_278 = phi i64 [ %52, %51 ], [ %phidx_276, %50 ]
  %53 = add nuw nsw i64 %52, 65
  %relidx_407 = sub i64 %53, %phidx_10
  %newgep_408 = getelementptr double, double* %phibase_9, i64 %relidx_407
  %54 = load double, double* %newgep_408, align 8, !tbaa !27
  %55 = add nuw nsw i64 %52, 64
  %relidx_409 = sub i64 %55, %phidx_278
  %newgep_410 = getelementptr double, double* %phibase_277, i64 %relidx_409
  %56 = load double, double* %newgep_410, align 8, !tbaa !27
  %relidx_411 = sub i64 %52, %55
  %newgep_412 = getelementptr double, double* %newgep_410, i64 %relidx_411
  %57 = load double, double* %newgep_412, align 8, !tbaa !27
  %58 = fsub double %56, %57
  %59 = fmul double %58, 5.000000e-01
  %60 = fsub double %54, %59
  store double %60, double* %newgep_408, align 8, !tbaa !27
  %61 = add nuw nsw i64 %52, 1
  %62 = icmp eq i64 %61, 60
  br i1 %62, label %63, label %51

; <label>:63:                                     ; preds = %51, %63
  %64 = phi i64 [ %81, %63 ], [ 60, %51 ]
  %phibase_11 = phi double* [ %newgep_408, %51 ], [ %newgep_414, %63 ]
  %phidx_12 = phi i64 [ %53, %51 ], [ %73, %63 ]
  %phibase_145 = phi double* [ %phibase_143, %51 ], [ %newgep_416, %63 ]
  %phidx_146 = phi i64 [ %phidx_144, %51 ], [ %66, %63 ]
  %phibase_279 = phi double* [ %newgep_412, %51 ], [ %newgep_424, %63 ]
  %phidx_280 = phi i64 [ %52, %51 ], [ %64, %63 ]
  %65 = add nsw i64 %64, -60
  %66 = add nuw nsw i64 %64, 4
  %relidx_415 = sub i64 %66, %phidx_146
  %newgep_416 = getelementptr double, double* %phibase_145, i64 %relidx_415
  %67 = load double, double* %newgep_416, align 8, !tbaa !27
  %relidx_417 = sub i64 %66, %phidx_280
  %newgep_418 = getelementptr double, double* %phibase_279, i64 %relidx_417
  %68 = load double, double* %newgep_418, align 8, !tbaa !27
  %relidx_419 = sub i64 %65, %66
  %newgep_420 = getelementptr double, double* %newgep_418, i64 %relidx_419
  %69 = load double, double* %newgep_420, align 8, !tbaa !27
  %70 = fsub double %68, %69
  %71 = fmul double %70, 5.000000e-01
  %72 = fsub double %67, %71
  store double %72, double* %newgep_416, align 8, !tbaa !27
  %73 = add nuw nsw i64 %64, 65
  %relidx_413 = sub i64 %73, %phidx_12
  %newgep_414 = getelementptr double, double* %phibase_11, i64 %relidx_413
  %74 = load double, double* %newgep_414, align 8, !tbaa !27
  %75 = add nuw nsw i64 %64, 64
  %relidx_421 = sub i64 %75, %65
  %newgep_422 = getelementptr double, double* %newgep_420, i64 %relidx_421
  %76 = load double, double* %newgep_422, align 8, !tbaa !27
  %relidx_423 = sub i64 %64, %75
  %newgep_424 = getelementptr double, double* %newgep_422, i64 %relidx_423
  %77 = load double, double* %newgep_424, align 8, !tbaa !27
  %78 = fsub double %76, %77
  %79 = fmul double %78, 5.000000e-01
  %80 = fsub double %74, %79
  store double %80, double* %newgep_414, align 8, !tbaa !27
  %81 = add nuw nsw i64 %64, 1
  %82 = icmp eq i64 %81, 62
  br i1 %82, label %83, label %63

; <label>:83:                                     ; preds = %63
  %phibase_13 = phi double* [ %newgep_414, %63 ]
  %phidx_14 = phi i64 [ %73, %63 ]
  %phibase_147 = phi double* [ %newgep_416, %63 ]
  %phidx_148 = phi i64 [ %66, %63 ]
  %phibase_281 = phi double* [ %newgep_424, %63 ]
  %phidx_282 = phi i64 [ %64, %63 ]
  %84 = load double, double* %2, align 8, !tbaa !27
  %85 = load double, double* %7, align 8, !tbaa !27
  %86 = load double, double* %0, align 8, !tbaa !27
  %87 = fsub double %85, %86
  %88 = load double, double* %8, align 8, !tbaa !27
  %89 = fadd double %87, %88
  %90 = load double, double* %1, align 8, !tbaa !27
  %91 = fsub double %89, %90
  %92 = fmul double %91, 7.000000e-01
  %93 = fsub double %84, %92
  store double %93, double* %2, align 8, !tbaa !27
  %94 = load double, double* %9, align 8, !tbaa !27
  %95 = load double, double* %10, align 8, !tbaa !27
  %96 = load double, double* %11, align 8, !tbaa !27
  %97 = fsub double %95, %96
  %98 = fmul double %97, 5.000000e-01
  %99 = fsub double %94, %98
  store double %99, double* %9, align 8, !tbaa !27
  %100 = load double, double* %12, align 8, !tbaa !27
  %101 = load double, double* %13, align 8, !tbaa !27
  %102 = load double, double* %14, align 8, !tbaa !27
  %103 = fsub double %101, %102
  %104 = fmul double %103, 5.000000e-01
  %105 = fsub double %100, %104
  store double %105, double* %12, align 8, !tbaa !27
  %106 = load double, double* %15, align 8, !tbaa !27
  %107 = load double, double* %16, align 8, !tbaa !27
  %108 = load double, double* %17, align 8, !tbaa !27
  %109 = fsub double %107, %108
  %110 = fmul double %109, 5.000000e-01
  %111 = fsub double %106, %110
  store double %111, double* %15, align 8, !tbaa !27
  %112 = load double, double* %18, align 8, !tbaa !27
  %113 = load double, double* %19, align 8, !tbaa !27
  %114 = load double, double* %20, align 8, !tbaa !27
  %115 = fsub double %113, %114
  %116 = fmul double %115, 5.000000e-01
  %117 = fsub double %112, %116
  store double %117, double* %18, align 8, !tbaa !27
  br label %118

; <label>:118:                                    ; preds = %118, %83
  %119 = phi i64 [ 64, %83 ], [ %128, %118 ]
  %phibase_15 = phi double* [ %phibase_15, %118 ], [ %phibase_13, %83 ]
  %phidx_16 = phi i64 [ %phidx_16, %118 ], [ %phidx_14, %83 ]
  %phibase_149 = phi double* [ %newgep_426, %118 ], [ %phibase_147, %83 ]
  %phidx_150 = phi i64 [ %121, %118 ], [ %phidx_148, %83 ]
  %phibase_283 = phi double* [ %newgep_430, %118 ], [ %phibase_281, %83 ]
  %phidx_284 = phi i64 [ %120, %118 ], [ %phidx_282, %83 ]
  %120 = add nsw i64 %119, -60
  %121 = add nuw nsw i64 %119, 4
  %relidx_425 = sub i64 %121, %phidx_150
  %newgep_426 = getelementptr double, double* %phibase_149, i64 %relidx_425
  %122 = load double, double* %newgep_426, align 8, !tbaa !27
  %relidx_427 = sub i64 %121, %phidx_284
  %newgep_428 = getelementptr double, double* %phibase_283, i64 %relidx_427
  %123 = load double, double* %newgep_428, align 8, !tbaa !27
  %relidx_429 = sub i64 %120, %121
  %newgep_430 = getelementptr double, double* %newgep_428, i64 %relidx_429
  %124 = load double, double* %newgep_430, align 8, !tbaa !27
  %125 = fsub double %123, %124
  %126 = fmul double %125, 5.000000e-01
  %127 = fsub double %122, %126
  store double %127, double* %newgep_426, align 8, !tbaa !27
  %128 = add nuw nsw i64 %119, 1
  %129 = icmp eq i64 %128, 124
  br i1 %129, label %130, label %118

; <label>:130:                                    ; preds = %118
  %phibase_17 = phi double* [ %phibase_15, %118 ]
  %phidx_18 = phi i64 [ %phidx_16, %118 ]
  %phibase_151 = phi double* [ %newgep_426, %118 ]
  %phidx_152 = phi i64 [ %121, %118 ]
  %phibase_285 = phi double* [ %newgep_430, %118 ]
  %phidx_286 = phi i64 [ %120, %118 ]
  store double %33, double* %21, align 8, !tbaa !27
  %131 = load double, double* %22, align 8, !tbaa !27
  %132 = load double, double* %23, align 8, !tbaa !27
  %133 = load double, double* %7, align 8, !tbaa !27
  %134 = fsub double %132, %133
  %135 = load double, double* %24, align 8, !tbaa !27
  %136 = fadd double %134, %135
  %137 = load double, double* %25, align 8, !tbaa !27
  %138 = fsub double %136, %137
  %139 = fmul double %138, 7.000000e-01
  %140 = fsub double %131, %139
  store double %140, double* %22, align 8, !tbaa !27
  br label %141

; <label>:141:                                    ; preds = %321, %130
  %142 = phi i64 [ 64, %130 ], [ %322, %321 ]
  %143 = phi i64 [ 125, %130 ], [ %324, %321 ]
  %144 = phi i64 [ 120, %130 ], [ %323, %321 ]
  %phibase_19 = phi double* [ %phibase_39, %321 ], [ %phibase_17, %130 ]
  %phidx_20 = phi i64 [ %phidx_40, %321 ], [ %phidx_18, %130 ]
  %phibase_153 = phi double* [ %phibase_173, %321 ], [ %phibase_151, %130 ]
  %phidx_154 = phi i64 [ %phidx_174, %321 ], [ %phidx_152, %130 ]
  %phibase_287 = phi double* [ %phibase_307, %321 ], [ %phibase_285, %130 ]
  %phidx_288 = phi i64 [ %phidx_308, %321 ], [ %phidx_286, %130 ]
  %145 = and i64 %142, 1
  %146 = icmp eq i64 %145, 0
  %147 = add i64 %142, 4294967236
  %148 = trunc i64 %147 to i32
  %149 = sdiv i32 %148, 2
  %150 = mul nsw i32 %149, 65
  %151 = shl i32 %149, 6
  %152 = shl i32 %149, 6
  %153 = add i32 %152, -64
  %154 = sext i32 %151 to i64
  %155 = sext i32 %150 to i64
  %156 = sext i32 %153 to i64
  br label %169

; <label>:157:                                    ; preds = %181
  %phibase_27 = phi double* [ %phibase_25, %181 ]
  %phidx_28 = phi i64 [ %phidx_26, %181 ]
  %phibase_161 = phi double* [ %phibase_159, %181 ]
  %phidx_162 = phi i64 [ %phidx_160, %181 ]
  %phibase_295 = phi double* [ %phibase_293, %181 ]
  %phidx_296 = phi i64 [ %phidx_294, %181 ]
  %158 = mul nuw nsw i64 %142, 30
  %159 = add nsw i64 %158, -1801
  %160 = icmp sgt i64 %142, %159
  br i1 %160, label %220, label %161

; <label>:161:                                    ; preds = %157
  %phibase_31 = phi double* [ %phibase_27, %157 ]
  %phidx_32 = phi i64 [ %phidx_28, %157 ]
  %phibase_165 = phi double* [ %phibase_161, %157 ]
  %phidx_166 = phi i64 [ %phidx_162, %157 ]
  %phibase_299 = phi double* [ %phibase_295, %157 ]
  %phidx_300 = phi i64 [ %phidx_296, %157 ]
  %162 = mul nuw nsw i64 %142, 59
  %163 = mul nuw nsw i64 %142, 31
  %164 = add i64 %163, 4294965436
  %165 = trunc i64 %142 to i32
  %166 = trunc i64 %162 to i32
  %167 = trunc i64 %142 to i32
  %168 = trunc i64 %164 to i32
  br label %184

; <label>:169:                                    ; preds = %181, %141
  %170 = phi i64 [ 1, %141 ], [ %182, %181 ]
  %phibase_21 = phi double* [ %phibase_25, %181 ], [ %phibase_19, %141 ]
  %phidx_22 = phi i64 [ %phidx_26, %181 ], [ %phidx_20, %141 ]
  %phibase_155 = phi double* [ %phibase_159, %181 ], [ %phibase_153, %141 ]
  %phidx_156 = phi i64 [ %phidx_160, %181 ], [ %phidx_154, %141 ]
  %phibase_289 = phi double* [ %phibase_293, %181 ], [ %phibase_287, %141 ]
  %phidx_290 = phi i64 [ %phidx_294, %181 ], [ %phidx_288, %141 ]
  br i1 %146, label %171, label %181

; <label>:171:                                    ; preds = %169
  %phibase_23 = phi double* [ %phibase_21, %169 ]
  %phidx_24 = phi i64 [ %phidx_22, %169 ]
  %phibase_157 = phi double* [ %phibase_155, %169 ]
  %phidx_158 = phi i64 [ %phidx_156, %169 ]
  %phibase_291 = phi double* [ %phibase_289, %169 ]
  %phidx_292 = phi i64 [ %phidx_290, %169 ]
  %172 = add nsw i64 %170, %155
  %relidx_431 = sub i64 %172, %phidx_24
  %newgep_432 = getelementptr double, double* %phibase_23, i64 %relidx_431
  %173 = load double, double* %newgep_432, align 8, !tbaa !27
  %174 = add nsw i64 %170, %154
  %relidx_433 = sub i64 %174, %phidx_292
  %newgep_434 = getelementptr double, double* %phibase_291, i64 %relidx_433
  %175 = load double, double* %newgep_434, align 8, !tbaa !27
  %176 = add nsw i64 %156, %170
  %relidx_435 = sub i64 %176, %174
  %newgep_436 = getelementptr double, double* %newgep_434, i64 %relidx_435
  %177 = load double, double* %newgep_436, align 8, !tbaa !27
  %178 = fsub double %175, %177
  %179 = fmul double %178, 5.000000e-01
  %180 = fsub double %173, %179
  store double %180, double* %newgep_432, align 8, !tbaa !27
  br label %181

; <label>:181:                                    ; preds = %169, %171
  %phibase_25 = phi double* [ %phibase_21, %169 ], [ %newgep_432, %171 ]
  %phidx_26 = phi i64 [ %phidx_22, %169 ], [ %172, %171 ]
  %phibase_159 = phi double* [ %phibase_155, %169 ], [ %phibase_157, %171 ]
  %phidx_160 = phi i64 [ %phidx_156, %169 ], [ %phidx_158, %171 ]
  %phibase_293 = phi double* [ %phibase_289, %169 ], [ %newgep_436, %171 ]
  %phidx_294 = phi i64 [ %phidx_290, %169 ], [ %176, %171 ]
  %182 = add nuw nsw i64 %170, 1
  %183 = icmp eq i64 %182, 64
  br i1 %183, label %157, label %169

; <label>:184:                                    ; preds = %216, %161
  %185 = phi i32 [ %165, %161 ], [ %217, %216 ]
  %phibase_37 = phi double* [ %phibase_47, %216 ], [ %phibase_31, %161 ]
  %phidx_38 = phi i64 [ %phidx_48, %216 ], [ %phidx_32, %161 ]
  %phibase_171 = phi double* [ %phibase_181, %216 ], [ %phibase_165, %161 ]
  %phidx_172 = phi i64 [ %phidx_182, %216 ], [ %phidx_166, %161 ]
  %phibase_305 = phi double* [ %phibase_315, %216 ], [ %phibase_299, %161 ]
  %phidx_306 = phi i64 [ %phidx_316, %216 ], [ %phidx_300, %161 ]
  %186 = add nuw nsw i32 %185, %166
  %187 = srem i32 %186, 60
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %216

; <label>:189:                                    ; preds = %184
  %phibase_45 = phi double* [ %phibase_37, %184 ]
  %phidx_46 = phi i64 [ %phidx_38, %184 ]
  %phibase_179 = phi double* [ %phibase_171, %184 ]
  %phidx_180 = phi i64 [ %phidx_172, %184 ]
  %phibase_313 = phi double* [ %phibase_305, %184 ]
  %phidx_314 = phi i64 [ %phidx_306, %184 ]
  %190 = sub nuw nsw i32 %185, %167
  %191 = sdiv i32 %190, 60
  %192 = shl i32 %191, 6
  %193 = sub nsw i32 %168, %185
  %194 = sdiv i32 %193, 30
  %195 = add nsw i32 %192, %194
  %196 = sext i32 %195 to i64
  %relidx_445 = sub i64 %196, %phidx_314
  %newgep_446 = getelementptr double, double* %phibase_313, i64 %relidx_445
  %197 = load double, double* %newgep_446, align 8, !tbaa !27
  %198 = mul nsw i32 %191, 65
  %199 = add nsw i32 %198, %194
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %relidx_437 = sub i64 %201, %phidx_46
  %newgep_438 = getelementptr double, double* %phibase_45, i64 %relidx_437
  %202 = load double, double* %newgep_438, align 8, !tbaa !27
  %203 = sext i32 %199 to i64
  %relidx_439 = sub i64 %203, %201
  %newgep_440 = getelementptr double, double* %newgep_438, i64 %relidx_439
  %204 = load double, double* %newgep_440, align 8, !tbaa !27
  %205 = fsub double %202, %204
  %206 = shl i32 %191, 6
  %207 = add i32 %206, 64
  %208 = add nsw i32 %207, %194
  %209 = sext i32 %208 to i64
  %relidx_441 = sub i64 %209, %phidx_180
  %newgep_442 = getelementptr double, double* %phibase_179, i64 %relidx_441
  %210 = load double, double* %newgep_442, align 8, !tbaa !27
  %211 = fadd double %205, %210
  %relidx_443 = sub i64 %196, %209
  %newgep_444 = getelementptr double, double* %newgep_442, i64 %relidx_443
  %212 = load double, double* %newgep_444, align 8, !tbaa !27
  %213 = fsub double %211, %212
  %214 = fmul double %213, 7.000000e-01
  %215 = fsub double %197, %214
  store double %215, double* %newgep_446, align 8, !tbaa !27
  br label %216

; <label>:216:                                    ; preds = %184, %189
  %phibase_47 = phi double* [ %phibase_37, %184 ], [ %newgep_440, %189 ]
  %phidx_48 = phi i64 [ %phidx_38, %184 ], [ %203, %189 ]
  %phibase_181 = phi double* [ %phibase_171, %184 ], [ %newgep_444, %189 ]
  %phidx_182 = phi i64 [ %phidx_172, %184 ], [ %196, %189 ]
  %phibase_315 = phi double* [ %phibase_305, %184 ], [ %newgep_446, %189 ]
  %phidx_316 = phi i64 [ %phidx_306, %184 ], [ %196, %189 ]
  %217 = add nuw nsw i32 %185, 1
  %218 = sext i32 %185 to i64
  %219 = icmp slt i64 %218, %159
  br i1 %219, label %184, label %220

; <label>:220:                                    ; preds = %216, %157
  %phibase_29 = phi double* [ %phibase_47, %216 ], [ %phibase_27, %157 ]
  %phidx_30 = phi i64 [ %phidx_48, %216 ], [ %phidx_28, %157 ]
  %phibase_163 = phi double* [ %phibase_181, %216 ], [ %phibase_161, %157 ]
  %phidx_164 = phi i64 [ %phidx_182, %216 ], [ %phidx_162, %157 ]
  %phibase_297 = phi double* [ %phibase_315, %216 ], [ %phibase_295, %157 ]
  %phidx_298 = phi i64 [ %phidx_316, %216 ], [ %phidx_296, %157 ]
  %221 = mul nuw nsw i64 %142, 31
  %222 = add nsw i64 %221, -1860
  %223 = add nsw i64 %221, -60
  %224 = icmp sgt i64 %158, %223
  br i1 %224, label %289, label %225

; <label>:225:                                    ; preds = %220
  %phibase_35 = phi double* [ %phibase_29, %220 ]
  %phidx_36 = phi i64 [ %phidx_30, %220 ]
  %phibase_169 = phi double* [ %phibase_163, %220 ]
  %phidx_170 = phi i64 [ %phidx_164, %220 ]
  %phibase_303 = phi double* [ %phibase_297, %220 ]
  %phidx_304 = phi i64 [ %phidx_298, %220 ]
  %226 = and i64 %142, 1
  %227 = icmp eq i64 %226, 0
  %228 = add i64 %142, 4294967236
  %229 = trunc i64 %228 to i32
  %230 = sdiv i32 %229, 2
  %231 = shl i32 %230, 6
  %232 = mul nsw i64 %142, -30
  %233 = add nuw nsw i64 %232, 1800
  %234 = shl i32 %230, 6
  %235 = add i32 %234, -64
  %236 = mul nuw nsw i64 %142, 59
  %237 = add i64 %221, 4294965436
  %238 = sext i32 %235 to i64
  %239 = sext i32 %231 to i64
  br label %240

; <label>:240:                                    ; preds = %286, %225
  %241 = phi i64 [ %287, %286 ], [ %144, %225 ]
  %phibase_43 = phi double* [ %phibase_67, %286 ], [ %phibase_35, %225 ]
  %phidx_44 = phi i64 [ %phidx_68, %286 ], [ %phidx_36, %225 ]
  %phibase_177 = phi double* [ %phibase_201, %286 ], [ %phibase_169, %225 ]
  %phidx_178 = phi i64 [ %phidx_202, %286 ], [ %phidx_170, %225 ]
  %phibase_311 = phi double* [ %phibase_335, %286 ], [ %phibase_303, %225 ]
  %phidx_312 = phi i64 [ %phidx_336, %286 ], [ %phidx_304, %225 ]
  br i1 %227, label %242, label %252

; <label>:242:                                    ; preds = %240
  %phibase_53 = phi double* [ %phibase_43, %240 ]
  %phidx_54 = phi i64 [ %phidx_44, %240 ]
  %phibase_187 = phi double* [ %phibase_177, %240 ]
  %phidx_188 = phi i64 [ %phidx_178, %240 ]
  %phibase_321 = phi double* [ %phibase_311, %240 ]
  %phidx_322 = phi i64 [ %phidx_312, %240 ]
  %243 = add nsw i64 %233, %241
  %244 = add nsw i64 %243, %239
  %relidx_447 = sub i64 %244, %phidx_188
  %newgep_448 = getelementptr double, double* %phibase_187, i64 %relidx_447
  %245 = load double, double* %newgep_448, align 8, !tbaa !27
  %relidx_449 = sub i64 %244, %phidx_322
  %newgep_450 = getelementptr double, double* %phibase_321, i64 %relidx_449
  %246 = load double, double* %newgep_450, align 8, !tbaa !27
  %247 = add nsw i64 %238, %243
  %relidx_451 = sub i64 %247, %244
  %newgep_452 = getelementptr double, double* %newgep_450, i64 %relidx_451
  %248 = load double, double* %newgep_452, align 8, !tbaa !27
  %249 = fsub double %246, %248
  %250 = fmul double %249, 5.000000e-01
  %251 = fsub double %245, %250
  store double %251, double* %newgep_448, align 8, !tbaa !27
  br label %252

; <label>:252:                                    ; preds = %242, %240
  %phibase_55 = phi double* [ %phibase_53, %242 ], [ %phibase_43, %240 ]
  %phidx_56 = phi i64 [ %phidx_54, %242 ], [ %phidx_44, %240 ]
  %phibase_189 = phi double* [ %newgep_448, %242 ], [ %phibase_177, %240 ]
  %phidx_190 = phi i64 [ %244, %242 ], [ %phidx_178, %240 ]
  %phibase_323 = phi double* [ %newgep_452, %242 ], [ %phibase_311, %240 ]
  %phidx_324 = phi i64 [ %247, %242 ], [ %phidx_312, %240 ]
  %253 = add nuw nsw i64 %241, %236
  %254 = trunc i64 %253 to i32
  %255 = srem i32 %254, 60
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %286

; <label>:257:                                    ; preds = %252
  %phibase_65 = phi double* [ %phibase_55, %252 ]
  %phidx_66 = phi i64 [ %phidx_56, %252 ]
  %phibase_199 = phi double* [ %phibase_189, %252 ]
  %phidx_200 = phi i64 [ %phidx_190, %252 ]
  %phibase_333 = phi double* [ %phibase_323, %252 ]
  %phidx_334 = phi i64 [ %phidx_324, %252 ]
  %258 = sub nuw nsw i64 %241, %142
  %259 = trunc i64 %258 to i32
  %260 = sdiv i32 %259, 60
  %261 = shl i32 %260, 6
  %262 = sub i64 %237, %241
  %263 = trunc i64 %262 to i32
  %264 = sdiv i32 %263, 30
  %265 = add nsw i32 %261, %264
  %266 = sext i32 %265 to i64
  %relidx_461 = sub i64 %266, %phidx_334
  %newgep_462 = getelementptr double, double* %phibase_333, i64 %relidx_461
  %267 = load double, double* %newgep_462, align 8, !tbaa !27
  %268 = mul nsw i32 %260, 65
  %269 = add nsw i32 %268, %264
  %270 = add nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %relidx_453 = sub i64 %271, %phidx_66
  %newgep_454 = getelementptr double, double* %phibase_65, i64 %relidx_453
  %272 = load double, double* %newgep_454, align 8, !tbaa !27
  %273 = sext i32 %269 to i64
  %relidx_455 = sub i64 %273, %271
  %newgep_456 = getelementptr double, double* %newgep_454, i64 %relidx_455
  %274 = load double, double* %newgep_456, align 8, !tbaa !27
  %275 = fsub double %272, %274
  %276 = shl i32 %260, 6
  %277 = add i32 %276, 64
  %278 = add nsw i32 %277, %264
  %279 = sext i32 %278 to i64
  %relidx_457 = sub i64 %279, %phidx_200
  %newgep_458 = getelementptr double, double* %phibase_199, i64 %relidx_457
  %280 = load double, double* %newgep_458, align 8, !tbaa !27
  %281 = fadd double %275, %280
  %relidx_459 = sub i64 %266, %279
  %newgep_460 = getelementptr double, double* %newgep_458, i64 %relidx_459
  %282 = load double, double* %newgep_460, align 8, !tbaa !27
  %283 = fsub double %281, %282
  %284 = fmul double %283, 7.000000e-01
  %285 = fsub double %267, %284
  store double %285, double* %newgep_462, align 8, !tbaa !27
  br label %286

; <label>:286:                                    ; preds = %252, %257
  %phibase_67 = phi double* [ %phibase_55, %252 ], [ %newgep_456, %257 ]
  %phidx_68 = phi i64 [ %phidx_56, %252 ], [ %273, %257 ]
  %phibase_201 = phi double* [ %phibase_189, %252 ], [ %newgep_460, %257 ]
  %phidx_202 = phi i64 [ %phidx_190, %252 ], [ %266, %257 ]
  %phibase_335 = phi double* [ %phibase_323, %252 ], [ %newgep_462, %257 ]
  %phidx_336 = phi i64 [ %phidx_324, %252 ], [ %266, %257 ]
  %287 = add nuw nsw i64 %241, 1
  %288 = icmp slt i64 %241, %222
  br i1 %288, label %240, label %289

; <label>:289:                                    ; preds = %286, %220
  %phibase_33 = phi double* [ %phibase_67, %286 ], [ %phibase_29, %220 ]
  %phidx_34 = phi i64 [ %phidx_68, %286 ], [ %phidx_30, %220 ]
  %phibase_167 = phi double* [ %phibase_201, %286 ], [ %phibase_163, %220 ]
  %phidx_168 = phi i64 [ %phidx_202, %286 ], [ %phidx_164, %220 ]
  %phibase_301 = phi double* [ %phibase_335, %286 ], [ %phibase_297, %220 ]
  %phidx_302 = phi i64 [ %phidx_336, %286 ], [ %phidx_298, %220 ]
  %290 = add nsw i64 %158, -1737
  %291 = add nsw i64 %221, -122
  %292 = icmp sgt i64 %291, %158
  br i1 %292, label %321, label %293

; <label>:293:                                    ; preds = %289
  %phibase_41 = phi double* [ %phibase_33, %289 ]
  %phidx_42 = phi i64 [ %phidx_34, %289 ]
  %phibase_175 = phi double* [ %phibase_167, %289 ]
  %phidx_176 = phi i64 [ %phidx_168, %289 ]
  %phibase_309 = phi double* [ %phibase_301, %289 ]
  %phidx_310 = phi i64 [ %phidx_302, %289 ]
  %294 = and i64 %142, 1
  %295 = icmp eq i64 %294, 0
  %296 = add i64 %142, 4294967236
  %297 = trunc i64 %296 to i32
  %298 = sdiv i32 %297, 2
  %299 = shl i32 %298, 6
  %300 = mul nsw i64 %142, -30
  %301 = add nuw nsw i64 %300, 1800
  %302 = shl i32 %298, 6
  %303 = add i32 %302, -64
  %304 = sext i32 %303 to i64
  %305 = sext i32 %299 to i64
  br label %306

; <label>:306:                                    ; preds = %318, %293
  %307 = phi i64 [ %319, %318 ], [ %143, %293 ]
  %phibase_51 = phi double* [ %phibase_63, %318 ], [ %phibase_41, %293 ]
  %phidx_52 = phi i64 [ %phidx_64, %318 ], [ %phidx_42, %293 ]
  %phibase_185 = phi double* [ %phibase_197, %318 ], [ %phibase_175, %293 ]
  %phidx_186 = phi i64 [ %phidx_198, %318 ], [ %phidx_176, %293 ]
  %phibase_319 = phi double* [ %phibase_331, %318 ], [ %phibase_309, %293 ]
  %phidx_320 = phi i64 [ %phidx_332, %318 ], [ %phidx_310, %293 ]
  br i1 %295, label %308, label %318

; <label>:308:                                    ; preds = %306
  %phibase_61 = phi double* [ %phibase_51, %306 ]
  %phidx_62 = phi i64 [ %phidx_52, %306 ]
  %phibase_195 = phi double* [ %phibase_185, %306 ]
  %phidx_196 = phi i64 [ %phidx_186, %306 ]
  %phibase_329 = phi double* [ %phibase_319, %306 ]
  %phidx_330 = phi i64 [ %phidx_320, %306 ]
  %309 = add nsw i64 %301, %307
  %310 = add nsw i64 %309, %305
  %relidx_463 = sub i64 %310, %phidx_196
  %newgep_464 = getelementptr double, double* %phibase_195, i64 %relidx_463
  %311 = load double, double* %newgep_464, align 8, !tbaa !27
  %relidx_465 = sub i64 %310, %phidx_330
  %newgep_466 = getelementptr double, double* %phibase_329, i64 %relidx_465
  %312 = load double, double* %newgep_466, align 8, !tbaa !27
  %313 = add nsw i64 %304, %309
  %relidx_467 = sub i64 %313, %310
  %newgep_468 = getelementptr double, double* %newgep_466, i64 %relidx_467
  %314 = load double, double* %newgep_468, align 8, !tbaa !27
  %315 = fsub double %312, %314
  %316 = fmul double %315, 5.000000e-01
  %317 = fsub double %311, %316
  store double %317, double* %newgep_464, align 8, !tbaa !27
  br label %318

; <label>:318:                                    ; preds = %306, %308
  %phibase_63 = phi double* [ %phibase_51, %306 ], [ %phibase_61, %308 ]
  %phidx_64 = phi i64 [ %phidx_52, %306 ], [ %phidx_62, %308 ]
  %phibase_197 = phi double* [ %phibase_185, %306 ], [ %newgep_464, %308 ]
  %phidx_198 = phi i64 [ %phidx_186, %306 ], [ %310, %308 ]
  %phibase_331 = phi double* [ %phibase_319, %306 ], [ %newgep_468, %308 ]
  %phidx_332 = phi i64 [ %phidx_320, %306 ], [ %313, %308 ]
  %319 = add nuw nsw i64 %307, 1
  %320 = icmp slt i64 %307, %290
  br i1 %320, label %306, label %321

; <label>:321:                                    ; preds = %318, %289
  %phibase_39 = phi double* [ %phibase_63, %318 ], [ %phibase_33, %289 ]
  %phidx_40 = phi i64 [ %phidx_64, %318 ], [ %phidx_34, %289 ]
  %phibase_173 = phi double* [ %phibase_197, %318 ], [ %phibase_167, %289 ]
  %phidx_174 = phi i64 [ %phidx_198, %318 ], [ %phidx_168, %289 ]
  %phibase_307 = phi double* [ %phibase_331, %318 ], [ %phibase_301, %289 ]
  %phidx_308 = phi i64 [ %phidx_332, %318 ], [ %phidx_302, %289 ]
  %322 = add nuw nsw i64 %142, 1
  %323 = add nuw nsw i64 %144, 30
  %324 = add nuw nsw i64 %143, 31
  %325 = icmp eq i64 %322, 123
  br i1 %325, label %326, label %141

; <label>:326:                                    ; preds = %321, %358
  %327 = phi i32 [ %359, %358 ], [ 123, %321 ]
  %phibase_49 = phi double* [ %phibase_39, %321 ], [ %phibase_59, %358 ]
  %phidx_50 = phi i64 [ %phidx_40, %321 ], [ %phidx_60, %358 ]
  %phibase_183 = phi double* [ %phibase_173, %321 ], [ %phibase_193, %358 ]
  %phidx_184 = phi i64 [ %phidx_174, %321 ], [ %phidx_194, %358 ]
  %phibase_317 = phi double* [ %phibase_307, %321 ], [ %phibase_327, %358 ]
  %phidx_318 = phi i64 [ %phidx_308, %321 ], [ %phidx_328, %358 ]
  %328 = add nuw nsw i32 %327, 57
  %329 = srem i32 %328, 60
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %358

; <label>:331:                                    ; preds = %326
  %phibase_57 = phi double* [ %phibase_49, %326 ]
  %phidx_58 = phi i64 [ %phidx_50, %326 ]
  %phibase_191 = phi double* [ %phibase_183, %326 ]
  %phidx_192 = phi i64 [ %phidx_184, %326 ]
  %phibase_325 = phi double* [ %phibase_317, %326 ]
  %phidx_326 = phi i64 [ %phidx_318, %326 ]
  %332 = add nsw i32 %327, -123
  %333 = sdiv i32 %332, 60
  %334 = shl i32 %333, 6
  %335 = sub nuw nsw i32 1953, %327
  %336 = sdiv i32 %335, 30
  %337 = add nsw i32 %334, %336
  %338 = sext i32 %337 to i64
  %relidx_477 = sub i64 %338, %phidx_326
  %newgep_478 = getelementptr double, double* %phibase_325, i64 %relidx_477
  %339 = load double, double* %newgep_478, align 8, !tbaa !27
  %340 = mul nsw i32 %333, 65
  %341 = add nsw i32 %340, %336
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %relidx_469 = sub i64 %343, %phidx_58
  %newgep_470 = getelementptr double, double* %phibase_57, i64 %relidx_469
  %344 = load double, double* %newgep_470, align 8, !tbaa !27
  %345 = sext i32 %341 to i64
  %relidx_471 = sub i64 %345, %343
  %newgep_472 = getelementptr double, double* %newgep_470, i64 %relidx_471
  %346 = load double, double* %newgep_472, align 8, !tbaa !27
  %347 = fsub double %344, %346
  %348 = shl i32 %333, 6
  %349 = add nsw i32 %336, 64
  %350 = add i32 %349, %348
  %351 = sext i32 %350 to i64
  %relidx_473 = sub i64 %351, %phidx_192
  %newgep_474 = getelementptr double, double* %phibase_191, i64 %relidx_473
  %352 = load double, double* %newgep_474, align 8, !tbaa !27
  %353 = fadd double %347, %352
  %relidx_475 = sub i64 %338, %351
  %newgep_476 = getelementptr double, double* %newgep_474, i64 %relidx_475
  %354 = load double, double* %newgep_476, align 8, !tbaa !27
  %355 = fsub double %353, %354
  %356 = fmul double %355, 7.000000e-01
  %357 = fsub double %339, %356
  store double %357, double* %newgep_478, align 8, !tbaa !27
  br label %358

; <label>:358:                                    ; preds = %326, %331
  %phibase_59 = phi double* [ %phibase_49, %326 ], [ %newgep_472, %331 ]
  %phidx_60 = phi i64 [ %phidx_50, %326 ], [ %345, %331 ]
  %phibase_193 = phi double* [ %phibase_183, %326 ], [ %newgep_476, %331 ]
  %phidx_194 = phi i64 [ %phidx_184, %326 ], [ %338, %331 ]
  %phibase_327 = phi double* [ %phibase_317, %326 ], [ %newgep_478, %331 ]
  %phidx_328 = phi i64 [ %phidx_318, %326 ], [ %338, %331 ]
  %359 = add nuw nsw i32 %327, 1
  %360 = icmp eq i32 %359, 1890
  br i1 %360, label %361, label %326

; <label>:361:                                    ; preds = %364, %375, %358
  %362 = phi i32 [ 1890, %358 ], [ %376, %375 ], [ 1924, %364 ]
  %phibase_69 = phi double* [ %phibase_71, %364 ], [ %phibase_73, %375 ], [ %phibase_59, %358 ]
  %phidx_70 = phi i64 [ %phidx_72, %364 ], [ %phidx_74, %375 ], [ %phidx_60, %358 ]
  %phibase_203 = phi double* [ %phibase_205, %364 ], [ %phibase_207, %375 ], [ %phibase_193, %358 ]
  %phidx_204 = phi i64 [ %phidx_206, %364 ], [ %phidx_208, %375 ], [ %phidx_194, %358 ]
  %phibase_337 = phi double* [ %phibase_339, %364 ], [ %phibase_341, %375 ], [ %phibase_327, %358 ]
  %phidx_338 = phi i64 [ %phidx_340, %364 ], [ %phidx_342, %375 ], [ %phidx_328, %358 ]
  %363 = icmp eq i32 %362, 1923
  br i1 %363, label %364, label %375

; <label>:364:                                    ; preds = %361
  %phibase_71 = phi double* [ %phibase_69, %361 ]
  %phidx_72 = phi i64 [ %phidx_70, %361 ]
  %phibase_205 = phi double* [ %phibase_203, %361 ]
  %phidx_206 = phi i64 [ %phidx_204, %361 ]
  %phibase_339 = phi double* [ %phibase_337, %361 ]
  %phidx_340 = phi i64 [ %phidx_338, %361 ]
  %365 = load double, double* %26, align 8, !tbaa !27
  %366 = load double, double* %27, align 8, !tbaa !27
  %367 = load double, double* %28, align 8, !tbaa !27
  %368 = fsub double %366, %367
  %369 = load double, double* %29, align 8, !tbaa !27
  %370 = fadd double %368, %369
  %371 = load double, double* %30, align 8, !tbaa !27
  %372 = fsub double %370, %371
  %373 = fmul double %372, 7.000000e-01
  %374 = fsub double %365, %373
  store double %374, double* %26, align 8, !tbaa !27
  br label %361

; <label>:375:                                    ; preds = %361
  %phibase_73 = phi double* [ %phibase_69, %361 ]
  %phidx_74 = phi i64 [ %phidx_70, %361 ]
  %phibase_207 = phi double* [ %phibase_203, %361 ]
  %phidx_208 = phi i64 [ %phidx_204, %361 ]
  %phibase_341 = phi double* [ %phibase_337, %361 ]
  %phidx_342 = phi i64 [ %phidx_338, %361 ]
  %376 = add nuw nsw i32 %362, 1
  %377 = icmp eq i32 %376, 1954
  br i1 %377, label %378, label %361

; <label>:378:                                    ; preds = %375, %576
  %379 = phi i64 [ %577, %576 ], [ 124, %375 ]
  %380 = phi i32 [ %580, %576 ], [ 1984, %375 ]
  %381 = phi i64 [ %579, %576 ], [ 1920, %375 ]
  %382 = phi i32 [ %578, %576 ], [ 124, %375 ]
  %phibase_75 = phi double* [ %phibase_73, %375 ], [ %phibase_107, %576 ]
  %phidx_76 = phi i64 [ %phidx_74, %375 ], [ %phidx_108, %576 ]
  %phibase_209 = phi double* [ %phibase_207, %375 ], [ %phibase_241, %576 ]
  %phidx_210 = phi i64 [ %phidx_208, %375 ], [ %phidx_242, %576 ]
  %phibase_343 = phi double* [ %phibase_341, %375 ], [ %phibase_375, %576 ]
  %phidx_344 = phi i64 [ %phidx_342, %375 ], [ %phidx_376, %576 ]
  %383 = and i64 %379, 1
  %384 = icmp eq i64 %383, 0
  %385 = add i64 %379, 4294967236
  %386 = trunc i64 %385 to i32
  %387 = sdiv i32 %386, 2
  %388 = mul nsw i32 %387, 65
  %389 = shl i32 %387, 6
  %390 = shl i32 %387, 6
  %391 = add i32 %390, -64
  %392 = sext i32 %389 to i64
  %393 = sext i32 %388 to i64
  %394 = sext i32 %391 to i64
  br label %395

; <label>:395:                                    ; preds = %407, %378
  %396 = phi i64 [ 1, %378 ], [ %408, %407 ]
  %phibase_77 = phi double* [ %phibase_81, %407 ], [ %phibase_75, %378 ]
  %phidx_78 = phi i64 [ %phidx_82, %407 ], [ %phidx_76, %378 ]
  %phibase_211 = phi double* [ %phibase_215, %407 ], [ %phibase_209, %378 ]
  %phidx_212 = phi i64 [ %phidx_216, %407 ], [ %phidx_210, %378 ]
  %phibase_345 = phi double* [ %phibase_349, %407 ], [ %phibase_343, %378 ]
  %phidx_346 = phi i64 [ %phidx_350, %407 ], [ %phidx_344, %378 ]
  br i1 %384, label %397, label %407

; <label>:397:                                    ; preds = %395
  %phibase_79 = phi double* [ %phibase_77, %395 ]
  %phidx_80 = phi i64 [ %phidx_78, %395 ]
  %phibase_213 = phi double* [ %phibase_211, %395 ]
  %phidx_214 = phi i64 [ %phidx_212, %395 ]
  %phibase_347 = phi double* [ %phibase_345, %395 ]
  %phidx_348 = phi i64 [ %phidx_346, %395 ]
  %398 = add nsw i64 %396, %393
  %relidx_479 = sub i64 %398, %phidx_80
  %newgep_480 = getelementptr double, double* %phibase_79, i64 %relidx_479
  %399 = load double, double* %newgep_480, align 8, !tbaa !27
  %400 = add nsw i64 %396, %392
  %relidx_481 = sub i64 %400, %phidx_348
  %newgep_482 = getelementptr double, double* %phibase_347, i64 %relidx_481
  %401 = load double, double* %newgep_482, align 8, !tbaa !27
  %402 = add nsw i64 %394, %396
  %relidx_483 = sub i64 %402, %400
  %newgep_484 = getelementptr double, double* %newgep_482, i64 %relidx_483
  %403 = load double, double* %newgep_484, align 8, !tbaa !27
  %404 = fsub double %401, %403
  %405 = fmul double %404, 5.000000e-01
  %406 = fsub double %399, %405
  store double %406, double* %newgep_480, align 8, !tbaa !27
  br label %407

; <label>:407:                                    ; preds = %395, %397
  %phibase_81 = phi double* [ %phibase_77, %395 ], [ %newgep_480, %397 ]
  %phidx_82 = phi i64 [ %phidx_78, %395 ], [ %398, %397 ]
  %phibase_215 = phi double* [ %phibase_211, %395 ], [ %phibase_213, %397 ]
  %phidx_216 = phi i64 [ %phidx_212, %395 ], [ %phidx_214, %397 ]
  %phibase_349 = phi double* [ %phibase_345, %395 ], [ %newgep_484, %397 ]
  %phidx_350 = phi i64 [ %phidx_346, %395 ], [ %402, %397 ]
  %408 = add nuw nsw i64 %396, 1
  %409 = icmp eq i64 %408, 64
  br i1 %409, label %410, label %395

; <label>:410:                                    ; preds = %407
  %phibase_83 = phi double* [ %phibase_81, %407 ]
  %phidx_84 = phi i64 [ %phidx_82, %407 ]
  %phibase_217 = phi double* [ %phibase_215, %407 ]
  %phidx_218 = phi i64 [ %phidx_216, %407 ]
  %phibase_351 = phi double* [ %phibase_349, %407 ]
  %phidx_352 = phi i64 [ %phidx_350, %407 ]
  %411 = mul nuw nsw i64 %379, 31
  %412 = mul nuw nsw i32 %382, 31
  %413 = add nsw i32 %412, -3750
  %414 = sext i32 %413 to i64
  %415 = icmp sgt i64 %379, %414
  %416 = trunc i64 %379 to i32
  %417 = select i1 %415, i32 %416, i32 %413
  %418 = mul nuw nsw i64 %379, 30
  %419 = add nsw i64 %418, -1801
  %420 = sext i32 %417 to i64
  %421 = icmp sgt i64 %420, %419
  br i1 %421, label %464, label %422

; <label>:422:                                    ; preds = %410
  %phibase_87 = phi double* [ %phibase_83, %410 ]
  %phidx_88 = phi i64 [ %phidx_84, %410 ]
  %phibase_221 = phi double* [ %phibase_217, %410 ]
  %phidx_222 = phi i64 [ %phidx_218, %410 ]
  %phibase_355 = phi double* [ %phibase_351, %410 ]
  %phidx_356 = phi i64 [ %phidx_352, %410 ]
  %423 = mul nuw nsw i64 %379, 59
  %424 = add i64 %411, 4294965436
  %425 = trunc i64 %423 to i32
  %426 = trunc i64 %379 to i32
  %427 = trunc i64 %424 to i32
  br label %428

; <label>:428:                                    ; preds = %460, %422
  %429 = phi i32 [ %417, %422 ], [ %461, %460 ]
  %phibase_91 = phi double* [ %phibase_99, %460 ], [ %phibase_87, %422 ]
  %phidx_92 = phi i64 [ %phidx_100, %460 ], [ %phidx_88, %422 ]
  %phibase_225 = phi double* [ %phibase_233, %460 ], [ %phibase_221, %422 ]
  %phidx_226 = phi i64 [ %phidx_234, %460 ], [ %phidx_222, %422 ]
  %phibase_359 = phi double* [ %phibase_367, %460 ], [ %phibase_355, %422 ]
  %phidx_360 = phi i64 [ %phidx_368, %460 ], [ %phidx_356, %422 ]
  %430 = add nsw i32 %429, %425
  %431 = srem i32 %430, 60
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %460

; <label>:433:                                    ; preds = %428
  %phibase_97 = phi double* [ %phibase_91, %428 ]
  %phidx_98 = phi i64 [ %phidx_92, %428 ]
  %phibase_231 = phi double* [ %phibase_225, %428 ]
  %phidx_232 = phi i64 [ %phidx_226, %428 ]
  %phibase_365 = phi double* [ %phibase_359, %428 ]
  %phidx_366 = phi i64 [ %phidx_360, %428 ]
  %434 = sub i32 %429, %426
  %435 = sdiv i32 %434, 60
  %436 = shl i32 %435, 6
  %437 = sub i32 %427, %429
  %438 = sdiv i32 %437, 30
  %439 = add nsw i32 %436, %438
  %440 = sext i32 %439 to i64
  %relidx_493 = sub i64 %440, %phidx_366
  %newgep_494 = getelementptr double, double* %phibase_365, i64 %relidx_493
  %441 = load double, double* %newgep_494, align 8, !tbaa !27
  %442 = mul nsw i32 %435, 65
  %443 = add nsw i32 %442, %438
  %444 = add nsw i32 %443, 1
  %445 = sext i32 %444 to i64
  %relidx_485 = sub i64 %445, %phidx_98
  %newgep_486 = getelementptr double, double* %phibase_97, i64 %relidx_485
  %446 = load double, double* %newgep_486, align 8, !tbaa !27
  %447 = sext i32 %443 to i64
  %relidx_487 = sub i64 %447, %445
  %newgep_488 = getelementptr double, double* %newgep_486, i64 %relidx_487
  %448 = load double, double* %newgep_488, align 8, !tbaa !27
  %449 = fsub double %446, %448
  %450 = shl i32 %435, 6
  %451 = add i32 %450, 64
  %452 = add nsw i32 %451, %438
  %453 = sext i32 %452 to i64
  %relidx_489 = sub i64 %453, %phidx_232
  %newgep_490 = getelementptr double, double* %phibase_231, i64 %relidx_489
  %454 = load double, double* %newgep_490, align 8, !tbaa !27
  %455 = fadd double %449, %454
  %relidx_491 = sub i64 %440, %453
  %newgep_492 = getelementptr double, double* %newgep_490, i64 %relidx_491
  %456 = load double, double* %newgep_492, align 8, !tbaa !27
  %457 = fsub double %455, %456
  %458 = fmul double %457, 7.000000e-01
  %459 = fsub double %441, %458
  store double %459, double* %newgep_494, align 8, !tbaa !27
  br label %460

; <label>:460:                                    ; preds = %428, %433
  %phibase_99 = phi double* [ %phibase_91, %428 ], [ %newgep_488, %433 ]
  %phidx_100 = phi i64 [ %phidx_92, %428 ], [ %447, %433 ]
  %phibase_233 = phi double* [ %phibase_225, %428 ], [ %newgep_492, %433 ]
  %phidx_234 = phi i64 [ %phidx_226, %428 ], [ %440, %433 ]
  %phibase_367 = phi double* [ %phibase_359, %428 ], [ %newgep_494, %433 ]
  %phidx_368 = phi i64 [ %phidx_360, %428 ], [ %440, %433 ]
  %461 = add nuw nsw i32 %429, 1
  %462 = sext i32 %429 to i64
  %463 = icmp slt i64 %462, %419
  br i1 %463, label %428, label %464

; <label>:464:                                    ; preds = %460, %410
  %phibase_85 = phi double* [ %phibase_99, %460 ], [ %phibase_83, %410 ]
  %phidx_86 = phi i64 [ %phidx_100, %460 ], [ %phidx_84, %410 ]
  %phibase_219 = phi double* [ %phibase_233, %460 ], [ %phibase_217, %410 ]
  %phidx_220 = phi i64 [ %phidx_234, %460 ], [ %phidx_218, %410 ]
  %phibase_353 = phi double* [ %phibase_367, %460 ], [ %phibase_351, %410 ]
  %phidx_354 = phi i64 [ %phidx_368, %460 ], [ %phidx_352, %410 ]
  %465 = and i64 %379, 1
  %466 = icmp eq i64 %465, 0
  %467 = add i64 %379, 4294967236
  %468 = trunc i64 %467 to i32
  %469 = sdiv i32 %468, 2
  %470 = shl i32 %469, 6
  %471 = mul nsw i64 %379, -30
  %472 = add nuw nsw i64 %471, 1800
  %473 = shl i32 %469, 6
  %474 = add i32 %473, -64
  %475 = mul nuw nsw i64 %379, 59
  %476 = add i64 %411, 4294965436
  %477 = sext i32 %474 to i64
  %478 = sext i32 %470 to i64
  br label %479

; <label>:479:                                    ; preds = %525, %464
  %480 = phi i64 [ %526, %525 ], [ %381, %464 ]
  %phibase_89 = phi double* [ %phibase_103, %525 ], [ %phibase_85, %464 ]
  %phidx_90 = phi i64 [ %phidx_104, %525 ], [ %phidx_86, %464 ]
  %phibase_223 = phi double* [ %phibase_237, %525 ], [ %phibase_219, %464 ]
  %phidx_224 = phi i64 [ %phidx_238, %525 ], [ %phidx_220, %464 ]
  %phibase_357 = phi double* [ %phibase_371, %525 ], [ %phibase_353, %464 ]
  %phidx_358 = phi i64 [ %phidx_372, %525 ], [ %phidx_354, %464 ]
  br i1 %466, label %481, label %491

; <label>:481:                                    ; preds = %479
  %phibase_93 = phi double* [ %phibase_89, %479 ]
  %phidx_94 = phi i64 [ %phidx_90, %479 ]
  %phibase_227 = phi double* [ %phibase_223, %479 ]
  %phidx_228 = phi i64 [ %phidx_224, %479 ]
  %phibase_361 = phi double* [ %phibase_357, %479 ]
  %phidx_362 = phi i64 [ %phidx_358, %479 ]
  %482 = add nsw i64 %472, %480
  %483 = add nuw nsw i64 %482, %478
  %relidx_495 = sub i64 %483, %phidx_228
  %newgep_496 = getelementptr double, double* %phibase_227, i64 %relidx_495
  %484 = load double, double* %newgep_496, align 8, !tbaa !27
  %relidx_497 = sub i64 %483, %phidx_362
  %newgep_498 = getelementptr double, double* %phibase_361, i64 %relidx_497
  %485 = load double, double* %newgep_498, align 8, !tbaa !27
  %486 = add nsw i64 %477, %482
  %relidx_499 = sub i64 %486, %483
  %newgep_500 = getelementptr double, double* %newgep_498, i64 %relidx_499
  %487 = load double, double* %newgep_500, align 8, !tbaa !27
  %488 = fsub double %485, %487
  %489 = fmul double %488, 5.000000e-01
  %490 = fsub double %484, %489
  store double %490, double* %newgep_496, align 8, !tbaa !27
  br label %491

; <label>:491:                                    ; preds = %481, %479
  %phibase_95 = phi double* [ %phibase_93, %481 ], [ %phibase_89, %479 ]
  %phidx_96 = phi i64 [ %phidx_94, %481 ], [ %phidx_90, %479 ]
  %phibase_229 = phi double* [ %newgep_496, %481 ], [ %phibase_223, %479 ]
  %phidx_230 = phi i64 [ %483, %481 ], [ %phidx_224, %479 ]
  %phibase_363 = phi double* [ %newgep_500, %481 ], [ %phibase_357, %479 ]
  %phidx_364 = phi i64 [ %486, %481 ], [ %phidx_358, %479 ]
  %492 = add nuw nsw i64 %480, %475
  %493 = trunc i64 %492 to i32
  %494 = srem i32 %493, 60
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %525

; <label>:496:                                    ; preds = %491
  %phibase_101 = phi double* [ %phibase_95, %491 ]
  %phidx_102 = phi i64 [ %phidx_96, %491 ]
  %phibase_235 = phi double* [ %phibase_229, %491 ]
  %phidx_236 = phi i64 [ %phidx_230, %491 ]
  %phibase_369 = phi double* [ %phibase_363, %491 ]
  %phidx_370 = phi i64 [ %phidx_364, %491 ]
  %497 = sub nuw nsw i64 %480, %379
  %498 = trunc i64 %497 to i32
  %499 = sdiv i32 %498, 60
  %500 = shl i32 %499, 6
  %501 = sub i64 %476, %480
  %502 = trunc i64 %501 to i32
  %503 = sdiv i32 %502, 30
  %504 = add nsw i32 %500, %503
  %505 = sext i32 %504 to i64
  %relidx_509 = sub i64 %505, %phidx_370
  %newgep_510 = getelementptr double, double* %phibase_369, i64 %relidx_509
  %506 = load double, double* %newgep_510, align 8, !tbaa !27
  %507 = mul nsw i32 %499, 65
  %508 = add nsw i32 %507, %503
  %509 = add nsw i32 %508, 1
  %510 = sext i32 %509 to i64
  %relidx_501 = sub i64 %510, %phidx_102
  %newgep_502 = getelementptr double, double* %phibase_101, i64 %relidx_501
  %511 = load double, double* %newgep_502, align 8, !tbaa !27
  %512 = sext i32 %508 to i64
  %relidx_503 = sub i64 %512, %510
  %newgep_504 = getelementptr double, double* %newgep_502, i64 %relidx_503
  %513 = load double, double* %newgep_504, align 8, !tbaa !27
  %514 = fsub double %511, %513
  %515 = shl i32 %499, 6
  %516 = add i32 %515, 64
  %517 = add nsw i32 %516, %503
  %518 = sext i32 %517 to i64
  %relidx_505 = sub i64 %518, %phidx_236
  %newgep_506 = getelementptr double, double* %phibase_235, i64 %relidx_505
  %519 = load double, double* %newgep_506, align 8, !tbaa !27
  %520 = fadd double %514, %519
  %relidx_507 = sub i64 %505, %518
  %newgep_508 = getelementptr double, double* %newgep_506, i64 %relidx_507
  %521 = load double, double* %newgep_508, align 8, !tbaa !27
  %522 = fsub double %520, %521
  %523 = fmul double %522, 7.000000e-01
  %524 = fsub double %506, %523
  store double %524, double* %newgep_510, align 8, !tbaa !27
  br label %525

; <label>:525:                                    ; preds = %491, %496
  %phibase_103 = phi double* [ %phibase_95, %491 ], [ %newgep_504, %496 ]
  %phidx_104 = phi i64 [ %phidx_96, %491 ], [ %512, %496 ]
  %phibase_237 = phi double* [ %phibase_229, %491 ], [ %newgep_508, %496 ]
  %phidx_238 = phi i64 [ %phidx_230, %491 ], [ %505, %496 ]
  %phibase_371 = phi double* [ %phibase_363, %491 ], [ %newgep_510, %496 ]
  %phidx_372 = phi i64 [ %phidx_364, %491 ], [ %505, %496 ]
  %526 = add nuw nsw i64 %480, 1
  %527 = trunc i64 %526 to i32
  %528 = icmp eq i32 %527, %380
  br i1 %528, label %529, label %479

; <label>:529:                                    ; preds = %525
  %phibase_105 = phi double* [ %phibase_103, %525 ]
  %phidx_106 = phi i64 [ %phidx_104, %525 ]
  %phibase_239 = phi double* [ %phibase_237, %525 ]
  %phidx_240 = phi i64 [ %phidx_238, %525 ]
  %phibase_373 = phi double* [ %phibase_371, %525 ]
  %phidx_374 = phi i64 [ %phidx_372, %525 ]
  %530 = add nsw i64 %418, -1736
  %531 = add nsw i64 %411, -1860
  %532 = icmp sgt i64 %530, %531
  br i1 %532, label %576, label %533

; <label>:533:                                    ; preds = %529
  %phibase_109 = phi double* [ %phibase_105, %529 ]
  %phidx_110 = phi i64 [ %phidx_106, %529 ]
  %phibase_243 = phi double* [ %phibase_239, %529 ]
  %phidx_244 = phi i64 [ %phidx_240, %529 ]
  %phibase_377 = phi double* [ %phibase_373, %529 ]
  %phidx_378 = phi i64 [ %phidx_374, %529 ]
  %534 = mul nuw nsw i64 %379, 59
  %535 = add i64 %411, 4294965436
  %536 = trunc i64 %530 to i32
  %537 = trunc i64 %534 to i32
  %538 = trunc i64 %379 to i32
  %539 = trunc i64 %535 to i32
  br label %540

; <label>:540:                                    ; preds = %572, %533
  %541 = phi i32 [ %536, %533 ], [ %573, %572 ]
  %phibase_113 = phi double* [ %phibase_121, %572 ], [ %phibase_109, %533 ]
  %phidx_114 = phi i64 [ %phidx_122, %572 ], [ %phidx_110, %533 ]
  %phibase_247 = phi double* [ %phibase_255, %572 ], [ %phibase_243, %533 ]
  %phidx_248 = phi i64 [ %phidx_256, %572 ], [ %phidx_244, %533 ]
  %phibase_381 = phi double* [ %phibase_389, %572 ], [ %phibase_377, %533 ]
  %phidx_382 = phi i64 [ %phidx_390, %572 ], [ %phidx_378, %533 ]
  %542 = add nuw nsw i32 %541, %537
  %543 = srem i32 %542, 60
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %572

; <label>:545:                                    ; preds = %540
  %phibase_119 = phi double* [ %phibase_113, %540 ]
  %phidx_120 = phi i64 [ %phidx_114, %540 ]
  %phibase_253 = phi double* [ %phibase_247, %540 ]
  %phidx_254 = phi i64 [ %phidx_248, %540 ]
  %phibase_387 = phi double* [ %phibase_381, %540 ]
  %phidx_388 = phi i64 [ %phidx_382, %540 ]
  %546 = sub nuw nsw i32 %541, %538
  %547 = sdiv i32 %546, 60
  %548 = shl i32 %547, 6
  %549 = sub nsw i32 %539, %541
  %550 = sdiv i32 %549, 30
  %551 = add nsw i32 %548, %550
  %552 = sext i32 %551 to i64
  %relidx_519 = sub i64 %552, %phidx_388
  %newgep_520 = getelementptr double, double* %phibase_387, i64 %relidx_519
  %553 = load double, double* %newgep_520, align 8, !tbaa !27
  %554 = mul nsw i32 %547, 65
  %555 = add nsw i32 %554, %550
  %556 = add nsw i32 %555, 1
  %557 = sext i32 %556 to i64
  %relidx_511 = sub i64 %557, %phidx_120
  %newgep_512 = getelementptr double, double* %phibase_119, i64 %relidx_511
  %558 = load double, double* %newgep_512, align 8, !tbaa !27
  %559 = sext i32 %555 to i64
  %relidx_513 = sub i64 %559, %557
  %newgep_514 = getelementptr double, double* %newgep_512, i64 %relidx_513
  %560 = load double, double* %newgep_514, align 8, !tbaa !27
  %561 = fsub double %558, %560
  %562 = shl i32 %547, 6
  %563 = add i32 %562, 64
  %564 = add nsw i32 %563, %550
  %565 = sext i32 %564 to i64
  %relidx_515 = sub i64 %565, %phidx_254
  %newgep_516 = getelementptr double, double* %phibase_253, i64 %relidx_515
  %566 = load double, double* %newgep_516, align 8, !tbaa !27
  %567 = fadd double %561, %566
  %relidx_517 = sub i64 %552, %565
  %newgep_518 = getelementptr double, double* %newgep_516, i64 %relidx_517
  %568 = load double, double* %newgep_518, align 8, !tbaa !27
  %569 = fsub double %567, %568
  %570 = fmul double %569, 7.000000e-01
  %571 = fsub double %553, %570
  store double %571, double* %newgep_520, align 8, !tbaa !27
  br label %572

; <label>:572:                                    ; preds = %540, %545
  %phibase_121 = phi double* [ %phibase_113, %540 ], [ %newgep_514, %545 ]
  %phidx_122 = phi i64 [ %phidx_114, %540 ], [ %559, %545 ]
  %phibase_255 = phi double* [ %phibase_247, %540 ], [ %newgep_518, %545 ]
  %phidx_256 = phi i64 [ %phidx_248, %540 ], [ %552, %545 ]
  %phibase_389 = phi double* [ %phibase_381, %540 ], [ %newgep_520, %545 ]
  %phidx_390 = phi i64 [ %phidx_382, %540 ], [ %552, %545 ]
  %573 = add nuw nsw i32 %541, 1
  %574 = sext i32 %541 to i64
  %575 = icmp slt i64 %574, %531
  br i1 %575, label %540, label %576

; <label>:576:                                    ; preds = %572, %529
  %phibase_107 = phi double* [ %phibase_121, %572 ], [ %phibase_105, %529 ]
  %phidx_108 = phi i64 [ %phidx_122, %572 ], [ %phidx_106, %529 ]
  %phibase_241 = phi double* [ %phibase_255, %572 ], [ %phibase_239, %529 ]
  %phidx_242 = phi i64 [ %phidx_256, %572 ], [ %phidx_240, %529 ]
  %phibase_375 = phi double* [ %phibase_389, %572 ], [ %phibase_373, %529 ]
  %phidx_376 = phi i64 [ %phidx_390, %572 ], [ %phidx_374, %529 ]
  %577 = add nuw nsw i64 %379, 1
  %578 = add nuw nsw i32 %382, 1
  %579 = add nuw nsw i64 %381, 30
  %580 = add nuw nsw i32 %380, 30
  %581 = icmp eq i64 %577, 187
  br i1 %581, label %582, label %378

; <label>:582:                                    ; preds = %576, %629
  %583 = phi i32 [ %630, %629 ], [ 187, %576 ]
  %phibase_111 = phi double* [ %phibase_107, %576 ], [ %phibase_115, %629 ]
  %phidx_112 = phi i64 [ %phidx_108, %576 ], [ %phidx_116, %629 ]
  %phibase_245 = phi double* [ %phibase_241, %576 ], [ %phibase_249, %629 ]
  %phidx_246 = phi i64 [ %phidx_242, %576 ], [ %phidx_250, %629 ]
  %phibase_379 = phi double* [ %phibase_375, %576 ], [ %phibase_383, %629 ]
  %phidx_380 = phi i64 [ %phidx_376, %576 ], [ %phidx_384, %629 ]
  %584 = mul nuw nsw i32 %583, 31
  %585 = add nsw i32 %584, -3750
  %586 = add nuw nsw i32 %583, 3780
  %587 = add nsw i32 %584, -1860
  %588 = icmp slt i32 %586, %587
  %589 = select i1 %588, i32 %586, i32 %587
  %590 = icmp sgt i32 %585, %589
  br i1 %590, label %629, label %591

; <label>:591:                                    ; preds = %582
  %phibase_117 = phi double* [ %phibase_111, %582 ]
  %phidx_118 = phi i64 [ %phidx_112, %582 ]
  %phibase_251 = phi double* [ %phibase_245, %582 ]
  %phidx_252 = phi i64 [ %phidx_246, %582 ]
  %phibase_385 = phi double* [ %phibase_379, %582 ]
  %phidx_386 = phi i64 [ %phidx_380, %582 ]
  %592 = mul nuw nsw i32 %583, 59
  %593 = add nsw i32 %584, -1860
  br label %594

; <label>:594:                                    ; preds = %626, %591
  %595 = phi i32 [ %585, %591 ], [ %627, %626 ]
  %phibase_125 = phi double* [ %phibase_131, %626 ], [ %phibase_117, %591 ]
  %phidx_126 = phi i64 [ %phidx_132, %626 ], [ %phidx_118, %591 ]
  %phibase_259 = phi double* [ %phibase_265, %626 ], [ %phibase_251, %591 ]
  %phidx_260 = phi i64 [ %phidx_266, %626 ], [ %phidx_252, %591 ]
  %phibase_393 = phi double* [ %phibase_399, %626 ], [ %phibase_385, %591 ]
  %phidx_394 = phi i64 [ %phidx_400, %626 ], [ %phidx_386, %591 ]
  %596 = add nuw nsw i32 %595, %592
  %597 = srem i32 %596, 60
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %626

; <label>:599:                                    ; preds = %594
  %phibase_129 = phi double* [ %phibase_125, %594 ]
  %phidx_130 = phi i64 [ %phidx_126, %594 ]
  %phibase_263 = phi double* [ %phibase_259, %594 ]
  %phidx_264 = phi i64 [ %phidx_260, %594 ]
  %phibase_397 = phi double* [ %phibase_393, %594 ]
  %phidx_398 = phi i64 [ %phidx_394, %594 ]
  %600 = sub nuw nsw i32 %595, %583
  %601 = sdiv i32 %600, 60
  %602 = shl i32 %601, 6
  %603 = sub nsw i32 %593, %595
  %604 = sdiv i32 %603, 30
  %605 = add nsw i32 %602, %604
  %606 = sext i32 %605 to i64
  %relidx_529 = sub i64 %606, %phidx_398
  %newgep_530 = getelementptr double, double* %phibase_397, i64 %relidx_529
  %607 = load double, double* %newgep_530, align 8, !tbaa !27
  %608 = mul nsw i32 %601, 65
  %609 = add nsw i32 %608, %604
  %610 = add nsw i32 %609, 1
  %611 = sext i32 %610 to i64
  %relidx_521 = sub i64 %611, %phidx_130
  %newgep_522 = getelementptr double, double* %phibase_129, i64 %relidx_521
  %612 = load double, double* %newgep_522, align 8, !tbaa !27
  %613 = sext i32 %609 to i64
  %relidx_523 = sub i64 %613, %611
  %newgep_524 = getelementptr double, double* %newgep_522, i64 %relidx_523
  %614 = load double, double* %newgep_524, align 8, !tbaa !27
  %615 = fsub double %612, %614
  %616 = shl i32 %601, 6
  %617 = add i32 %616, 64
  %618 = add nsw i32 %617, %604
  %619 = sext i32 %618 to i64
  %relidx_525 = sub i64 %619, %phidx_264
  %newgep_526 = getelementptr double, double* %phibase_263, i64 %relidx_525
  %620 = load double, double* %newgep_526, align 8, !tbaa !27
  %621 = fadd double %615, %620
  %relidx_527 = sub i64 %606, %619
  %newgep_528 = getelementptr double, double* %newgep_526, i64 %relidx_527
  %622 = load double, double* %newgep_528, align 8, !tbaa !27
  %623 = fsub double %621, %622
  %624 = fmul double %623, 7.000000e-01
  %625 = fsub double %607, %624
  store double %625, double* %newgep_530, align 8, !tbaa !27
  br label %626

; <label>:626:                                    ; preds = %594, %599
  %phibase_131 = phi double* [ %phibase_125, %594 ], [ %newgep_524, %599 ]
  %phidx_132 = phi i64 [ %phidx_126, %594 ], [ %613, %599 ]
  %phibase_265 = phi double* [ %phibase_259, %594 ], [ %newgep_528, %599 ]
  %phidx_266 = phi i64 [ %phidx_260, %594 ], [ %606, %599 ]
  %phibase_399 = phi double* [ %phibase_393, %594 ], [ %newgep_530, %599 ]
  %phidx_400 = phi i64 [ %phidx_394, %594 ], [ %606, %599 ]
  %627 = add nuw nsw i32 %595, 1
  %628 = icmp slt i32 %595, %589
  br i1 %628, label %594, label %629

; <label>:629:                                    ; preds = %626, %582
  %phibase_115 = phi double* [ %phibase_131, %626 ], [ %phibase_111, %582 ]
  %phidx_116 = phi i64 [ %phidx_132, %626 ], [ %phidx_112, %582 ]
  %phibase_249 = phi double* [ %phibase_265, %626 ], [ %phibase_245, %582 ]
  %phidx_250 = phi i64 [ %phidx_266, %626 ], [ %phidx_246, %582 ]
  %phibase_383 = phi double* [ %phibase_399, %626 ], [ %phibase_379, %582 ]
  %phidx_384 = phi i64 [ %phidx_400, %626 ], [ %phidx_380, %582 ]
  %630 = add nuw nsw i32 %583, 1
  %631 = icmp eq i32 %630, 252
  br i1 %631, label %632, label %582

; <label>:632:                                    ; preds = %629
  %phibase_123 = phi double* [ %phibase_115, %629 ]
  %phidx_124 = phi i64 [ %phidx_116, %629 ]
  %phibase_257 = phi double* [ %phibase_249, %629 ]
  %phidx_258 = phi i64 [ %phidx_250, %629 ]
  %phibase_391 = phi double* [ %phibase_383, %629 ]
  %phidx_392 = phi i64 [ %phidx_384, %629 ]
  %633 = add nuw nsw i32 %32, 1
  %634 = icmp eq i32 %633, 64
  br i1 %634, label %635, label %31

; <label>:635:                                    ; preds = %632
  %phibase_127 = phi double* [ %phibase_123, %632 ]
  %phidx_128 = phi i64 [ %phidx_124, %632 ]
  %phibase_261 = phi double* [ %phibase_257, %632 ]
  %phidx_262 = phi i64 [ %phidx_258, %632 ]
  %phibase_395 = phi double* [ %phibase_391, %632 ]
  %phidx_396 = phi i64 [ %phidx_392, %632 ]
  %duprsltadr_ = getelementptr double, double* %0, i64 %phidx_128
  %castadr1 = ptrtoint double* %phibase_127 to i64
  %castadr2 = ptrtoint double* %duprsltadr_ to i64
  %cmpopdet = icmp ne i64 %castadr1, %castadr2
  %newdetval = zext i1 %cmpopdet to i64
  %ldolddetval = load i64, i64* @detectCounter
  %updetval = shl i64 %newdetval, 1
  %updetval531 = or i64 %updetval, %ldolddetval
  store i64 %updetval531, i64* @detectCounter
  %duprsltadr_532 = getelementptr double, double* %1, i64 %phidx_262
  %castadr1533 = ptrtoint double* %phibase_261 to i64
  %castadr2534 = ptrtoint double* %duprsltadr_532 to i64
  %cmpopdet535 = icmp ne i64 %castadr1533, %castadr2534
  %newdetval536 = zext i1 %cmpopdet535 to i64
  %ldolddetval537 = load i64, i64* @detectCounter
  %updetval538 = shl i64 %newdetval536, 1
  %updetval539 = or i64 %updetval538, %ldolddetval537
  store i64 %updetval539, i64* @detectCounter
  %duprsltadr_540 = getelementptr double, double* %2, i64 %phidx_396
  %castadr1541 = ptrtoint double* %phibase_395 to i64
  %castadr2542 = ptrtoint double* %duprsltadr_540 to i64
  %cmpopdet543 = icmp ne i64 %castadr1541, %castadr2542
  %newdetval544 = zext i1 %cmpopdet543 to i64
  %ldolddetval545 = load i64, i64* @detectCounter
  %updetval546 = shl i64 %newdetval544, 1
  %updetval547 = or i64 %updetval546, %ldolddetval545
  store i64 %updetval547, i64* @detectCounter
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }

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
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !29, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"long long", !29, i64 0}

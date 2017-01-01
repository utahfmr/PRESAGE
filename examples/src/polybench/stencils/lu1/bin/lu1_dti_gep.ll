; ModuleID = 'lu1_dti_gep.bc'
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
@.str.10 = private unnamed_addr constant [34 x i8] c"\0AError:Coudn't find the file: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"fault injection count:%lld\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"\0Atimestamp:%lu\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"\0Aerror detection count:%lld\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Time;\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"%ld;\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%s;\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"%d;\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%c;\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"%lld;\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"%f;\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"%lf;\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str.63 = private unnamed_addr constant [44 x i8] c"\0AError: Invalid value provided for FI Algo!\00"
@switch.table = private unnamed_addr constant [5 x i32] [i32 7, i32 15, i32 31, i32 63, i32 31]
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@str.61 = private unnamed_addr constant [42 x i8] c"\0AError:Coudn't find fi param file \22fi.in\22\00"
@.str.13 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@str = private unnamed_addr constant [47 x i8] c"\0AError:memory allocation failed for dynFSIdx!!\00"
@.str.15 = private unnamed_addr constant [11 x i8] c"Instr_Name\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Original_Value\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Corrupted_Value\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Bit_Position\00", align 1
@.str.41 = private unnamed_addr constant [57 x i8] c"fialg!=FI_ERROR && \22Invalid fault injection algorithm!!\22\00", align 1
@.str.42 = private unnamed_addr constant [43 x i8] c"/home/arnabd/apps/VULFI//runtime/Corrupt.C\00", align 1
@__PRETTY_FUNCTION__._Z11checkParamsv = private unnamed_addr constant [19 x i8] c"void checkParams()\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"fibr!=FIBR_ERROR && \22Invalid byte range!!\22\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"fid!=FID_ERROR && \22Invalid byte direction!!\22\00", align 1
@.str.45 = private unnamed_addr constant [71 x i8] c"((bu>=bl && bu<=63 && bl >=0)||fialg!=FI_ABR) && \22Invalid bit range!!\22\00", align 1
@.str.46 = private unnamed_addr constant [62 x i8] c"ef<=tf&&ef>0&&tf>0 && \22Invalid fault injection probability!!\22\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"(pfs==0||pfs==1) && \22Invalid value for pfs flag!!\22\00", align 1
@str.62 = private unnamed_addr constant [47 x i8] c"\0AError:memory allocation failed for dynFSIdx!!\00"
@.str.19 = private unnamed_addr constant [4 x i8] c"fia\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"CBR\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ABR\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"MSK\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"fib\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"fid\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"LSB\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"MSB\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"fiu\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"fil\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"pn\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"pfs\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@_ZZ18getStrFieldByIndexPcPKciE4temp = linkonce_odr global [1024 x i8] zeroinitializer, comdat, align 16
@.str.12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1.13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2.14 = private unnamed_addr constant [7 x i8] c"%lld,\0A\00", align 1
@.str.3.15 = private unnamed_addr constant [6 x i8] c"%lf,\0A\00", align 1
@.str.4.16 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@init_flag = global i32 0, align 4
@dimcount = global i32 0, align 4
@psgdim = global [10 x i32] zeroinitializer, align 16
@prf_data = global [512 x [20 x i64]] zeroinitializer, align 16
@dim0 = global i64 0, align 8
@dim1 = global i64 0, align 8
@dim2 = global i64 0, align 8
@.str.48 = private unnamed_addr constant [78 x i8] c"\0AINFO: Gep id %lld has actual rel id is %lld where as computed rel id is %lld\00", align 1
@.str.1.49 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2.50 = private unnamed_addr constant [27 x i8] c"MAX_UNIQUE_COUNT_EXCEEDED\0A\00", align 1
@.str.3.51 = private unnamed_addr constant [9 x i8] c"%u:%lld \00", align 1
@.str.4.52 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.5.53 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.6.54 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7.55 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@t_start = common global double 0.000000e+00, align 8
@t_end = common global double 0.000000e+00, align 8
@str.4 = private unnamed_addr constant [32 x i8] c"\0AInfo: Insufficient arguments!\0A\00"
@str.3 = private unnamed_addr constant [27 x i8] c"\0AInfo: Soft error detected\00"
@str.56 = private unnamed_addr constant [31 x i8] c"\0AInfo: No Soft Errors detected\00"
@instrname = internal constant [67 x i8] c"  %159 = getelementptr double, double* %phibase_35, i64 %relidx_93\00"
@instrname.1 = internal constant [67 x i8] c"  %164 = getelementptr double, double* %phibase_39, i64 %relidx_95\00"
@instrname.2 = internal constant [67 x i8] c"  %172 = getelementptr double, double* %phibase_37, i64 %relidx_97\00"
@instrname.3 = internal constant [70 x i8] c"  %175 = getelementptr double, double* %castinttoptr6, i64 %relidx_99\00"
@instrname.4 = internal constant [68 x i8] c"  %187 = getelementptr double, double* %phibase_43, i64 %relidx_101\00"
@instrname.5 = internal constant [65 x i8] c"  %50 = getelementptr double, double* %newgep_70, i64 %relidx_71\00"
@instrname.6 = internal constant [65 x i8] c"  %59 = getelementptr double, double* %phibase_7, i64 %relidx_73\00"
@instrname.7 = internal constant [70 x i8] c"  %62 = getelementptr double, double* %castinttoptr18, i64 %relidx_75\00"
@instrname.8 = internal constant [70 x i8] c"  %65 = getelementptr double, double* %castinttoptr21, i64 %relidx_77\00"
@instrname.9 = internal constant [70 x i8] c"  %70 = getelementptr double, double* %castinttoptr24, i64 %relidx_79\00"
@instrname.10 = internal constant [70 x i8] c"  %73 = getelementptr double, double* %castinttoptr27, i64 %relidx_81\00"
@instrname.11 = internal constant [66 x i8] c"  %85 = getelementptr double, double* %phibase_19, i64 %relidx_83\00"
@instrname.12 = internal constant [70 x i8] c"  %89 = getelementptr double, double* %castinttoptr33, i64 %relidx_85\00"
@instrname.13 = internal constant [63 x i8] c"  %24 = getelementptr double, double* %phibase_1, i64 %relidx_\00"
@instrname.14 = internal constant [65 x i8] c"  %29 = getelementptr double, double* %phibase_5, i64 %relidx_65\00"
@instrname.15 = internal constant [65 x i8] c"  %45 = getelementptr double, double* %phibase_9, i64 %relidx_67\00"
@instrname.16 = internal constant [66 x i8] c"  %50 = getelementptr double, double* %phibase_15, i64 %relidx_69\00"
@instrname.17 = internal constant [68 x i8] c"  %204 = getelementptr double, double* %phibase_49, i64 %relidx_103\00"
@instrname.18 = internal constant [72 x i8] c"  %208 = getelementptr double, double* %castinttoptr51, i64 %relidx_105\00"
@instrname.19 = internal constant [67 x i8] c"  %136 = getelementptr double, double* %phibase_23, i64 %relidx_87\00"
@instrname.20 = internal constant [67 x i8] c"  %145 = getelementptr double, double* %phibase_31, i64 %relidx_89\00"
@instrname.21 = internal constant [71 x i8] c"  %150 = getelementptr double, double* %castinttoptr60, i64 %relidx_91\00"
@instrname.22 = internal constant [68 x i8] c"  %257 = getelementptr double, double* %phibase_57, i64 %relidx_107\00"
@instrname.23 = internal constant [68 x i8] c"  %266 = getelementptr double, double* %phibase_61, i64 %relidx_109\00"
@instrname.24 = internal constant [72 x i8] c"  %271 = getelementptr double, double* %castinttoptr69, i64 %relidx_111\00"
@instrname.25 = internal constant [57 x i8] c"  %290 = getelementptr double, double* %0, i64 %phidx_52\00"
@instrname.26 = internal constant [68 x i8] c"  %291 = getelementptr double, double* %phibase_51, i64 %relidx_113\00"
@instrname.27 = internal constant [72 x i8] c"  %293 = getelementptr double, double* %castinttoptr78, i64 %relidx_115\00"
@instrname.28 = internal constant [72 x i8] c"  %296 = getelementptr double, double* %castinttoptr81, i64 %relidx_117\00"
@instrname.29 = internal constant [72 x i8] c"  %298 = getelementptr double, double* %castinttoptr84, i64 %relidx_119\00"

; Function Attrs: noinline nounwind uwtable
define i32 @printFaultSitesData() #0 {
  %1 = load i32, i32* @pfs, align 4, !tbaa !1
  switch i32 %1, label %2 [
    i32 -1, label %25
    i32 0, label %25
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
  tail call void @free(i8* %24) #6
  store i64* null, i64** @dynFSIdx, align 8, !tbaa !7
  br label %25

; <label>:25:                                     ; preds = %23, %20, %0, %0
  %26 = phi i32 [ -1, %0 ], [ -1, %0 ], [ 0, %20 ], [ 0, %23 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct._IO_FILE* @_Z5getFDPKcS0_(i8*, i8*) #0 comdat {
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %0)
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

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

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
  %15 = tail call %struct._IO_FILE* @_Z5getFDPKcS0_(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %13)
  %17 = load i64, i64* @execKey, align 8, !tbaa !9
  %18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* @detectCounter, align 8, !tbaa !5
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %19)
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %27, i8* nonnull %14, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
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
  %8 = tail call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %0
  %11 = call i64 @getline(i8** nonnull %1, i64* nonnull %2, %struct._IO_FILE* nonnull %8)
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %22, label %15

; <label>:13:                                     ; preds = %0
  %14 = tail call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.61, i64 0, i64 0))
  tail call void @exit(i32 -1) #11
  unreachable

; <label>:15:                                     ; preds = %10, %15
  %16 = load i8*, i8** %1, align 8, !tbaa !7
  %17 = call i8* @_Z18getStrFieldByIndexPcPKci(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %18 = load i8*, i8** %1, align 8, !tbaa !7
  %19 = call i8* @_Z18getStrFieldByIndexPcPKci(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 1)
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
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
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %9)
  br label %18

; <label>:15:                                     ; preds = %6
  %16 = load i64, i64* @execKey, align 8, !tbaa !9
  %17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i64 %16)
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
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* %10)
  %26 = or i32 %4, 2
  %27 = icmp eq i32 %26, 2
  %28 = icmp eq i32 %4, 3
  %29 = or i1 %28, %27
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %18
  %31 = bitcast i8* %1 to i32*
  %32 = load i32, i32* %31, align 4, !tbaa !1
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %32)
  %34 = bitcast i8* %2 to i32*
  %35 = load i32, i32* %34, align 4, !tbaa !1
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %35)
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
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i32 %40)
  %42 = load i8, i8* %2, align 1, !tbaa !13
  %43 = sext i8 %42 to i32
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i32 %43)
  br label %72

; <label>:45:                                     ; preds = %37
  %46 = bitcast i8* %1 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !5
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i64 %47)
  %49 = bitcast i8* %2 to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !5
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i64 %50)
  br label %72

; <label>:52:                                     ; preds = %37
  %53 = bitcast i8* %1 to float*
  %54 = load float, float* %53, align 4, !tbaa !14
  %55 = fpext float %54 to double
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), double %55)
  %57 = bitcast i8* %2 to float*
  %58 = load float, float* %57, align 4, !tbaa !14
  %59 = fpext float %58 to double
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), double %59)
  br label %72

; <label>:61:                                     ; preds = %37
  %62 = bitcast i8* %1 to double*
  %63 = load double, double* %62, align 8, !tbaa !16
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), double %63)
  %65 = bitcast i8* %2 to double*
  %66 = load double, double* %65, align 8, !tbaa !16
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), double %66)
  br label %72

; <label>:68:                                     ; preds = %37
  br i1 %12, label %69, label %75

; <label>:69:                                     ; preds = %68
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* %1)
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* %2)
  br label %73

; <label>:72:                                     ; preds = %38, %52, %61, %45, %30
  br i1 %12, label %73, label %75

; <label>:73:                                     ; preds = %69, %72
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), i8* %3)
  br label %79

; <label>:75:                                     ; preds = %68, %72
  %76 = bitcast i8* %3 to i32*
  %77 = load i32, i32* %76, align 4, !tbaa !1
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i32 %77)
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
  %12 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.63, i64 0, i64 0))
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
  %3 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5
  store i32 0, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %9
  store i32 1, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:13:                                     ; preds = %9
  %14 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  store i32 2, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:17:                                     ; preds = %13
  store i32 3, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:18:                                     ; preds = %2
  %19 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %54

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  store i32 1, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25
  store i32 2, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:29:                                     ; preds = %25
  %30 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29
  store i32 3, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:33:                                     ; preds = %29
  %34 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %33
  store i32 4, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %37
  store i32 5, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:41:                                     ; preds = %37
  %42 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41
  store i32 6, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:45:                                     ; preds = %41
  %46 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %45
  store i32 7, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:49:                                     ; preds = %45
  %50 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  store i32 8, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:53:                                     ; preds = %49
  store i32 9, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:54:                                     ; preds = %18
  %55 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

; <label>:57:                                     ; preds = %54
  %58 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  store i32 0, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:61:                                     ; preds = %57
  %62 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %61
  store i32 1, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:65:                                     ; preds = %61
  store i32 2, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:66:                                     ; preds = %54
  %67 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0)) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %66
  %70 = tail call i32 @atoi(i8* %1) #13
  store i32 %70, i32* @bu, align 4, !tbaa !1
  br label %96

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

; <label>:74:                                     ; preds = %71
  %75 = tail call i32 @atoi(i8* %1) #13
  store i32 %75, i32* @bl, align 4, !tbaa !1
  br label %96

; <label>:76:                                     ; preds = %71
  %77 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #13
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %76
  %80 = tail call i64 @atoll(i8* %1) #13
  store i64 %80, i64* @ef, align 8, !tbaa !5
  br label %96

; <label>:81:                                     ; preds = %76
  %82 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0)) #13
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

; <label>:84:                                     ; preds = %81
  %85 = tail call i64 @atoll(i8* %1) #13
  store i64 %85, i64* @tf, align 8, !tbaa !5
  br label %96

; <label>:86:                                     ; preds = %81
  %87 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

; <label>:89:                                     ; preds = %86
  %90 = tail call i32 @atoi(i8* %1) #13
  store i32 %90, i32* @pfs, align 4, !tbaa !1
  br label %96

; <label>:91:                                     ; preds = %86
  %92 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0)) #13
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
  %19 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str.62, i64 0, i64 0))
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
  %2 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
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
  tail call void @__assert_fail(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i64 0, i64 0), i32 292, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* @fibr, align 4, !tbaa !20
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %4
  tail call void @__assert_fail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i64 0, i64 0), i32 293, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* @fid, align 4, !tbaa !18
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  tail call void @__assert_fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i64 0, i64 0), i32 294, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
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
  tail call void @__assert_fail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i64 0, i64 0), i32 295, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
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
  tail call void @__assert_fail(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i64 0, i64 0), i32 296, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:32:                                     ; preds = %23
  %33 = load i32, i32* @pfs, align 4, !tbaa !1
  %34 = or i32 %33, 1
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %32
  tail call void @__assert_fail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i64 0, i64 0), i32 297, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* nonnull %6, i8* nonnull %4, i8* nonnull %13, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %27, i8* nonnull %14, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %27, i8* nonnull %14, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %27, i8* nonnull %14, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %29, i8* nonnull %16, i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
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
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %29, i8* nonnull %16, i32 6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
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
  %6 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.13, i64 0, i64 0))
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ]
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.14, i64 0, i64 0), i64 %1)
  %12 = tail call i32 @fclose(%struct._IO_FILE* %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @writeOVRData(i8* nocapture readonly, double, i32) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.13, i64 0, i64 0))
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ]
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.15, i64 0, i64 0), double %1)
  %12 = tail call i32 @fclose(%struct._IO_FILE* %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @print_data_3d(i32, i32, i32, double* nocapture readonly, i8* nocapture readonly, i32) #0 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.13, i64 0, i64 0))
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
  %34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.16, i64 0, i64 0), double %33)
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
  %8 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %11

; <label>:9:                                      ; preds = %5
  %10 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.13, i64 0, i64 0))
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
  %26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.16, i64 0, i64 0), double %25)
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
  %7 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %10

; <label>:8:                                      ; preds = %4
  %9 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.13, i64 0, i64 0))
  br label %10

; <label>:10:                                     ; preds = %8, %6
  %11 = phi %struct._IO_FILE* [ %7, %6 ], [ %9, %8 ]
  %12 = icmp sgt i32 %0, 0
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %10, %13
  %14 = phi i64 [ %18, %13 ], [ 0, %10 ]
  %15 = getelementptr inbounds double, double* %1, i64 %14
  %16 = load double, double* %15, align 8, !tbaa !27
  %17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.16, i64 0, i64 0), double %16)
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
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.48, i64 0, i64 0), i64 %0, i64 %1, i64 %2)
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
  %21 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.49, i64 0, i64 0))
  br label %27

; <label>:22:                                     ; preds = %17
  %23 = icmp eq i32 %18, 20
  %24 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.49, i64 0, i64 0))
  br i1 %23, label %25, label %27

; <label>:25:                                     ; preds = %22
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2.50, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %24)
  br label %64

; <label>:27:                                     ; preds = %20, %22
  %28 = phi i32 [ %10, %20 ], [ %18, %22 ]
  %29 = phi %struct._IO_FILE* [ %21, %20 ], [ %24, %22 ]
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 %30
  %32 = load i64, i64* %31, align 8, !tbaa !5
  %33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.51, i64 0, i64 0), i32 %28, i64 %32)
  %34 = load i32, i32* @dimcount, align 4, !tbaa !1
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %27
  %37 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.52, i64 0, i64 0), i32 %34)
  br label %40

; <label>:38:                                     ; preds = %27
  %39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5.53, i64 0, i64 0), i32 %34)
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
  %52 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.54, i64 0, i64 0), i32 %51)
  br label %60

; <label>:53:                                     ; preds = %43
  %54 = icmp eq i32 %45, %46
  br i1 %54, label %55, label %60

; <label>:55:                                     ; preds = %53
  %56 = zext i32 %45 to i64
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* @psgdim, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !1
  %59 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7.55, i64 0, i64 0), i32 %58)
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
  %7 = tail call noalias i8* @malloc(i64 32768) #6
  %8 = bitcast i8* %7 to double*
  %9 = ptrtoint i8* %7 to i64
  %10 = getelementptr inbounds i8, i8* %7, i64 32760
  %11 = ptrtoint i8* %10 to i64
  tail call void @psgProtect(double* %8, i64 %9, i64 %11) #6
  tail call fastcc void @init_array(double* %8)
  tail call fastcc void @func(double* %8)
  %12 = icmp eq i32 %0, 4
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds i8*, i8** %1, i64 3
  %15 = load i8*, i8** %14, align 8, !tbaa !31
  tail call void @print_data_2d(i32 64, i32 64, double* %8, i8* %15, i32 1) #6
  br label %16

; <label>:16:                                     ; preds = %13, %6
  %17 = load i64, i64* @detectCounter, align 8, !tbaa !33
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %21, label %19

; <label>:19:                                     ; preds = %16
  %20 = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @str.3, i64 0, i64 0))
  br label %23

; <label>:21:                                     ; preds = %16
  %22 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.56, i64 0, i64 0))
  br label %23

; <label>:23:                                     ; preds = %21, %19
  tail call void @free(i8* %7) #6
  %24 = tail call i32 @printFaultSitesData() #6
  %25 = tail call i32 @printFaultInjectionData() #6
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @init_array(double* nocapture) unnamed_addr #9 {
  br label %2

; <label>:2:                                      ; preds = %26, %1
  %3 = phi i64 [ 0, %1 ], [ %4, %26 ]
  %4 = add nuw nsw i64 %3, 1
  %5 = shl i64 %3, 6
  %6 = trunc i64 %4 to i32
  br label %7

; <label>:7:                                      ; preds = %24, %2
  %8 = phi i64 [ 0, %2 ], [ %9, %24 ]
  %9 = add nuw nsw i64 %8, 1
  %10 = add nuw nsw i64 %8, %5
  %11 = getelementptr inbounds double, double* %0, i64 %10
  %12 = load double, double* %11, align 8, !tbaa !27
  %13 = trunc i64 %9 to i32
  br label %14

; <label>:14:                                     ; preds = %14, %7
  %15 = phi double [ %12, %7 ], [ %21, %14 ]
  %16 = phi i32 [ 0, %7 ], [ %22, %14 ]
  %17 = add nuw nsw i32 %6, %16
  %18 = add nuw nsw i32 %13, %16
  %19 = mul nsw i32 %17, %18
  %20 = sitofp i32 %19 to double
  %21 = fadd double %20, %15
  %22 = add nuw nsw i32 %16, 1
  %23 = icmp eq i32 %22, 64
  br i1 %23, label %24, label %14

; <label>:24:                                     ; preds = %14
  store double %21, double* %11, align 8, !tbaa !27
  %25 = icmp eq i64 %9, 64
  br i1 %25, label %26, label %7

; <label>:26:                                     ; preds = %24
  %27 = icmp eq i64 %4, 64
  br i1 %27, label %28, label %2

; <label>:28:                                     ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @func(double*) unnamed_addr #0 {
  br label %9

; <label>:2:                                      ; preds = %158
  %phibase_25 = phi double* [ %phibase_21, %158 ]
  %phidx_26 = phi i64 [ %phidx_22, %158 ]
  %3 = add nuw nsw i64 %15, 63
  %4 = add nuw nsw i32 %14, 62
  %5 = add nuw nsw i64 %13, 64
  %6 = add nuw nsw i64 %12, 62
  %7 = add nuw nsw i32 %11, 31
  %8 = icmp eq i64 %39, 31
  br i1 %8, label %161, label %9

; <label>:9:                                      ; preds = %2, %1
  %10 = phi i64 [ 0, %1 ], [ %39, %2 ]
  %11 = phi i32 [ 1986, %1 ], [ %7, %2 ]
  %12 = phi i64 [ 95, %1 ], [ %6, %2 ]
  %13 = phi i64 [ 33, %1 ], [ %5, %2 ]
  %14 = phi i32 [ 62, %1 ], [ %4, %2 ]
  %15 = phi i64 [ 0, %1 ], [ %3, %2 ]
  %phibase_ = phi double* [ %phibase_25, %2 ], [ %0, %1 ]
  %phidx_ = phi i64 [ %phidx_26, %2 ], [ 0, %1 ]
  %16 = mul nuw nsw i64 %10, 63
  %17 = mul nuw nsw i64 %10, 62
  %18 = add nuw nsw i64 %17, 62
  %19 = icmp slt i64 %16, %18
  %20 = shl nsw i64 %10, 6
  br i1 %19, label %21, label %35

; <label>:21:                                     ; preds = %9
  %phibase_1 = phi double* [ %phibase_, %9 ]
  %phidx_2 = phi i64 [ %phidx_, %9 ]
  %22 = shl i64 %10, 1
  %23 = mul nuw nsw i64 %10, 65
  %relidx_ = sub i64 %23, %phidx_2
  %24 = getelementptr double, double* %phibase_1, i64 %relidx_
  %castptrtoint37 = ptrtoint double* %24 to i64
  %injectError38 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint37, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @instrname.13, i32 0, i32 0), i64 -1)
  %castinttoptr39 = inttoptr i64 %injectError38 to double*
  br label %25

; <label>:25:                                     ; preds = %25, %21
  %26 = phi i64 [ %15, %21 ], [ %27, %25 ]
  %phibase_5 = phi double* [ %castinttoptr42, %25 ], [ %castinttoptr39, %21 ]
  %phidx_6 = phi i64 [ %28, %25 ], [ %23, %21 ]
  %27 = add nuw nsw i64 %26, 1
  %28 = add nuw nsw i64 %22, %27
  %relidx_65 = sub i64 %28, %phidx_6
  %29 = getelementptr double, double* %phibase_5, i64 %relidx_65
  %castptrtoint40 = ptrtoint double* %29 to i64
  %injectError41 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint40, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @instrname.14, i32 0, i32 0), i64 -1)
  %castinttoptr42 = inttoptr i64 %injectError41 to double*
  %30 = load double, double* %castinttoptr42, align 8, !tbaa !27
  %31 = load double, double* %castinttoptr39, align 8, !tbaa !27
  %32 = fdiv double %30, %31
  store double %32, double* %castinttoptr42, align 8, !tbaa !27
  %33 = trunc i64 %27 to i32
  %34 = icmp eq i32 %33, %14
  br i1 %34, label %35, label %25

; <label>:35:                                     ; preds = %25, %9
  %phibase_3 = phi double* [ %castinttoptr42, %25 ], [ %phibase_, %9 ]
  %phidx_4 = phi i64 [ %28, %25 ], [ %phidx_, %9 ]
  %36 = or i64 %20, 33
  %37 = add nuw nsw i64 %17, 93
  %38 = icmp sgt i64 %36, %37
  %39 = add nuw nsw i64 %10, 1
  %40 = shl nsw i64 %39, 6
  br i1 %38, label %60, label %41

; <label>:41:                                     ; preds = %35
  %phibase_9 = phi double* [ %phibase_3, %35 ]
  %phidx_10 = phi i64 [ %phidx_4, %35 ]
  %42 = mul nsw i64 %10, -63
  %43 = add nsw i64 %42, -32
  %44 = add nuw nsw i64 %40, %10
  %relidx_67 = sub i64 %44, %phidx_10
  %45 = getelementptr double, double* %phibase_9, i64 %relidx_67
  %castptrtoint43 = ptrtoint double* %45 to i64
  %injectError44 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint43, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @instrname.15, i32 0, i32 0), i64 -1)
  %castinttoptr45 = inttoptr i64 %injectError44 to double*
  br label %46

; <label>:46:                                     ; preds = %46, %41
  %47 = phi i64 [ %58, %46 ], [ %13, %41 ]
  %phibase_15 = phi double* [ %castinttoptr15, %46 ], [ %castinttoptr45, %41 ]
  %phidx_16 = phi i64 [ %53, %46 ], [ %44, %41 ]
  %48 = add nsw i64 %43, %47
  %49 = add nuw nsw i64 %48, %40
  %relidx_69 = sub i64 %49, %phidx_16
  %50 = getelementptr double, double* %phibase_15, i64 %relidx_69
  %castptrtoint46 = ptrtoint double* %50 to i64
  %injectError47 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint46, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @instrname.16, i32 0, i32 0), i64 -1)
  %castinttoptr48 = inttoptr i64 %injectError47 to double*
  %51 = load double, double* %castinttoptr48, align 8, !tbaa !27
  %52 = load double, double* %castinttoptr45, align 8, !tbaa !27
  %53 = add nuw nsw i64 %48, %20
  %relidx_71 = sub i64 %53, %49
  %54 = getelementptr double, double* %castinttoptr48, i64 %relidx_71
  %castptrtoint13 = ptrtoint double* %54 to i64
  %injectError14 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint13, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @instrname.5, i32 0, i32 0), i64 -1)
  %castinttoptr15 = inttoptr i64 %injectError14 to double*
  %55 = load double, double* %castinttoptr15, align 8, !tbaa !27
  %56 = fmul double %52, %55
  %57 = fsub double %51, %56
  store double %57, double* %castinttoptr48, align 8, !tbaa !27
  %58 = add nuw nsw i64 %47, 1
  %59 = icmp slt i64 %47, %37
  br i1 %59, label %46, label %60

; <label>:60:                                     ; preds = %46, %35
  %phibase_7 = phi double* [ %castinttoptr15, %46 ], [ %phibase_3, %35 ]
  %phidx_8 = phi i64 [ %53, %46 ], [ %phidx_4, %35 ]
  %61 = sub nuw nsw i64 62, %10
  %62 = add nuw nsw i64 %40, %61
  %relidx_73 = sub i64 %62, %phidx_8
  %63 = getelementptr double, double* %phibase_7, i64 %relidx_73
  %castptrtoint16 = ptrtoint double* %63 to i64
  %injectError17 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint16, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @instrname.6, i32 0, i32 0), i64 -1)
  %castinttoptr18 = inttoptr i64 %injectError17 to double*
  %64 = load double, double* %castinttoptr18, align 8, !tbaa !27
  %65 = add nuw nsw i64 %40, %10
  %relidx_75 = sub i64 %65, %62
  %66 = getelementptr double, double* %castinttoptr18, i64 %relidx_75
  %castptrtoint19 = ptrtoint double* %66 to i64
  %injectError20 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint19, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @instrname.7, i32 0, i32 0), i64 -1)
  %castinttoptr21 = inttoptr i64 %injectError20 to double*
  %67 = load double, double* %castinttoptr21, align 8, !tbaa !27
  %68 = add nuw nsw i64 %20, %61
  %relidx_77 = sub i64 %68, %65
  %69 = getelementptr double, double* %castinttoptr21, i64 %relidx_77
  %castptrtoint22 = ptrtoint double* %69 to i64
  %injectError23 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint22, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @instrname.8, i32 0, i32 0), i64 -1)
  %castinttoptr24 = inttoptr i64 %injectError23 to double*
  %70 = load double, double* %castinttoptr24, align 8, !tbaa !27
  %71 = fmul double %67, %70
  %72 = fsub double %64, %71
  store double %72, double* %castinttoptr18, align 8, !tbaa !27
  %73 = or i64 %20, 63
  %relidx_79 = sub i64 %73, %68
  %74 = getelementptr double, double* %castinttoptr24, i64 %relidx_79
  %castptrtoint25 = ptrtoint double* %74 to i64
  %injectError26 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint25, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @instrname.9, i32 0, i32 0), i64 -1)
  %castinttoptr27 = inttoptr i64 %injectError26 to double*
  %75 = load double, double* %castinttoptr27, align 8, !tbaa !27
  %76 = mul nuw nsw i64 %10, 65
  %relidx_81 = sub i64 %76, %73
  %77 = getelementptr double, double* %castinttoptr27, i64 %relidx_81
  %castptrtoint28 = ptrtoint double* %77 to i64
  %injectError29 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint28, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @instrname.10, i32 0, i32 0), i64 -1)
  %castinttoptr30 = inttoptr i64 %injectError29 to double*
  %78 = load double, double* %castinttoptr30, align 8, !tbaa !27
  %79 = fdiv double %75, %78
  store double %79, double* %castinttoptr27, align 8, !tbaa !27
  %80 = add nuw nsw i64 %16, 95
  %81 = icmp sgt i64 %17, %16
  br i1 %81, label %99, label %82

; <label>:82:                                     ; preds = %60
  %phibase_13 = phi double* [ %castinttoptr30, %60 ]
  %phidx_14 = phi i64 [ %76, %60 ]
  %83 = mul nsw i64 %10, -63
  %84 = add nsw i64 %83, -32
  br label %85

; <label>:85:                                     ; preds = %85, %82
  %86 = phi i64 [ %97, %85 ], [ %12, %82 ]
  %phibase_19 = phi double* [ %castinttoptr36, %85 ], [ %phibase_13, %82 ]
  %phidx_20 = phi i64 [ %92, %85 ], [ %phidx_14, %82 ]
  %87 = add nsw i64 %84, %86
  %88 = add nuw nsw i64 %87, %40
  %relidx_83 = sub i64 %88, %phidx_20
  %89 = getelementptr double, double* %phibase_19, i64 %relidx_83
  %castptrtoint31 = ptrtoint double* %89 to i64
  %injectError32 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint31, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @instrname.11, i32 0, i32 0), i64 -1)
  %castinttoptr33 = inttoptr i64 %injectError32 to double*
  %90 = load double, double* %castinttoptr33, align 8, !tbaa !27
  %91 = load double, double* %castinttoptr21, align 8, !tbaa !27
  %92 = add nuw nsw i64 %87, %20
  %relidx_85 = sub i64 %92, %88
  %93 = getelementptr double, double* %castinttoptr33, i64 %relidx_85
  %castptrtoint34 = ptrtoint double* %93 to i64
  %injectError35 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint34, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @instrname.12, i32 0, i32 0), i64 -1)
  %castinttoptr36 = inttoptr i64 %injectError35 to double*
  %94 = load double, double* %castinttoptr36, align 8, !tbaa !27
  %95 = fmul double %91, %94
  %96 = fsub double %90, %95
  store double %96, double* %castinttoptr33, align 8, !tbaa !27
  %97 = add nuw nsw i64 %86, 1
  %98 = icmp slt i64 %86, %80
  br i1 %98, label %85, label %99

; <label>:99:                                     ; preds = %85, %60
  %phibase_11 = phi double* [ %castinttoptr36, %85 ], [ %castinttoptr30, %60 ]
  %phidx_12 = phi i64 [ %92, %85 ], [ %76, %60 ]
  %100 = mul nuw nsw i64 %10, 31
  %101 = add nuw nsw i64 %17, 64
  %102 = mul nsw i64 %10, -31
  %103 = add nsw i64 %102, 929
  %104 = add i64 %102, 4294967264
  %105 = add nuw nsw i64 %100, 1024
  %106 = trunc i64 %101 to i32
  %107 = trunc i64 %103 to i32
  %108 = trunc i64 %104 to i32
  %109 = trunc i64 %105 to i32
  %110 = trunc i64 %10 to i32
  %111 = trunc i64 %20 to i32
  br label %112

; <label>:112:                                    ; preds = %158, %99
  %113 = phi i32 [ %106, %99 ], [ %159, %158 ]
  %phibase_17 = phi double* [ %phibase_21, %158 ], [ %phibase_11, %99 ]
  %phidx_18 = phi i64 [ %phidx_22, %158 ], [ %phidx_12, %99 ]
  %114 = shl nsw i32 %113, 5
  %115 = add nsw i32 %114, -993
  %116 = sitofp i32 %115 to double
  %117 = fdiv double %116, 3.100000e+01
  %118 = tail call double @ceil(double %117) #12
  %119 = fptosi double %118 to i32
  %120 = sitofp i32 %119 to double
  %121 = add nsw i32 %107, %114
  %122 = sitofp i32 %121 to double
  %123 = fdiv double %122, 3.100000e+01
  %124 = tail call double @floor(double %123) #12
  %125 = fcmp ugt double %120, %124
  br i1 %125, label %158, label %126

; <label>:126:                                    ; preds = %112
  %phibase_23 = phi double* [ %phibase_17, %112 ]
  %phidx_24 = phi i64 [ %phidx_18, %112 ]
  %127 = add nuw nsw i32 %113, 30
  %128 = srem i32 %127, 31
  %129 = icmp eq i32 %128, 0
  %130 = add nsw i32 %108, %113
  %131 = sdiv i32 %130, 31
  %132 = shl nsw i32 %131, 6
  %133 = sub nsw i32 %109, %114
  %134 = add nsw i32 %132, %110
  %135 = sext i32 %134 to i64
  %relidx_87 = sub i64 %135, %phidx_24
  %136 = getelementptr double, double* %phibase_23, i64 %relidx_87
  %castptrtoint55 = ptrtoint double* %136 to i64
  %injectError56 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint55, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @instrname.19, i32 0, i32 0), i64 -1)
  %castinttoptr57 = inttoptr i64 %injectError56 to double*
  br label %137

; <label>:137:                                    ; preds = %126, %154
  %138 = phi i32 [ %119, %126 ], [ %155, %154 ]
  %phibase_27 = phi double* [ %castinttoptr57, %126 ], [ %phibase_33, %154 ]
  %phidx_28 = phi i64 [ %135, %126 ], [ %phidx_34, %154 ]
  br i1 %129, label %139, label %154

; <label>:139:                                    ; preds = %137
  %phibase_31 = phi double* [ %phibase_27, %137 ]
  %phidx_32 = phi i64 [ %phidx_28, %137 ]
  %140 = mul nsw i32 %138, 31
  %141 = add i32 %133, %140
  %142 = sdiv i32 %141, 31
  %143 = add nsw i32 %142, %132
  %144 = sext i32 %143 to i64
  %relidx_89 = sub i64 %144, %phidx_32
  %145 = getelementptr double, double* %phibase_31, i64 %relidx_89
  %castptrtoint58 = ptrtoint double* %145 to i64
  %injectError59 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint58, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @instrname.20, i32 0, i32 0), i64 -1)
  %castinttoptr60 = inttoptr i64 %injectError59 to double*
  %146 = load double, double* %castinttoptr60, align 8, !tbaa !27
  %147 = load double, double* %castinttoptr57, align 8, !tbaa !27
  %148 = add nsw i32 %142, %111
  %149 = sext i32 %148 to i64
  %relidx_91 = sub i64 %149, %144
  %150 = getelementptr double, double* %castinttoptr60, i64 %relidx_91
  %castptrtoint61 = ptrtoint double* %150 to i64
  %injectError62 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint61, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @instrname.21, i32 0, i32 0), i64 -1)
  %castinttoptr63 = inttoptr i64 %injectError62 to double*
  %151 = load double, double* %castinttoptr63, align 8, !tbaa !27
  %152 = fmul double %147, %151
  %153 = fsub double %146, %152
  store double %153, double* %castinttoptr60, align 8, !tbaa !27
  br label %154

; <label>:154:                                    ; preds = %137, %139
  %phibase_33 = phi double* [ %phibase_27, %137 ], [ %castinttoptr63, %139 ]
  %phidx_34 = phi i64 [ %phidx_28, %137 ], [ %149, %139 ]
  %155 = add nsw i32 %138, 1
  %156 = sitofp i32 %155 to double
  %157 = fcmp ugt double %156, %124
  br i1 %157, label %158, label %137

; <label>:158:                                    ; preds = %154, %112
  %phibase_21 = phi double* [ %phibase_33, %154 ], [ %phibase_17, %112 ]
  %phidx_22 = phi i64 [ %phidx_34, %154 ], [ %phidx_18, %112 ]
  %159 = add nuw nsw i32 %113, 1
  %160 = icmp eq i32 %159, %11
  br i1 %160, label %2, label %112

; <label>:161:                                    ; preds = %2, %283
  %162 = phi i64 [ %284, %283 ], [ 31, %2 ]
  %163 = phi i64 [ %287, %283 ], [ 2017, %2 ]
  %164 = phi i32 [ %286, %283 ], [ 1984, %2 ]
  %165 = phi i64 [ %285, %283 ], [ 1953, %2 ]
  %phibase_29 = phi double* [ %phibase_25, %2 ], [ %phibase_45, %283 ]
  %phidx_30 = phi i64 [ %phidx_26, %2 ], [ %phidx_46, %283 ]
  %166 = mul nuw nsw i64 %162, 63
  %167 = mul nuw nsw i64 %162, 62
  %168 = add nuw nsw i64 %167, 62
  %169 = icmp slt i64 %166, %168
  %170 = shl nsw i64 %162, 6
  br i1 %169, label %171, label %185

; <label>:171:                                    ; preds = %161
  %phibase_35 = phi double* [ %phibase_29, %161 ]
  %phidx_36 = phi i64 [ %phidx_30, %161 ]
  %172 = shl i64 %162, 1
  %173 = mul nuw nsw i64 %162, 65
  %relidx_93 = sub i64 %173, %phidx_36
  %174 = getelementptr double, double* %phibase_35, i64 %relidx_93
  %castptrtoint = ptrtoint double* %174 to i64
  %injectError = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @instrname, i32 0, i32 0), i64 -1)
  %castinttoptr = inttoptr i64 %injectError to double*
  br label %175

; <label>:175:                                    ; preds = %175, %171
  %176 = phi i64 [ %165, %171 ], [ %177, %175 ]
  %phibase_39 = phi double* [ %castinttoptr3, %175 ], [ %castinttoptr, %171 ]
  %phidx_40 = phi i64 [ %178, %175 ], [ %173, %171 ]
  %177 = add nuw nsw i64 %176, 1
  %178 = add nuw nsw i64 %172, %177
  %relidx_95 = sub i64 %178, %phidx_40
  %179 = getelementptr double, double* %phibase_39, i64 %relidx_95
  %castptrtoint1 = ptrtoint double* %179 to i64
  %injectError2 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @instrname.1, i32 0, i32 0), i64 -1)
  %castinttoptr3 = inttoptr i64 %injectError2 to double*
  %180 = load double, double* %castinttoptr3, align 8, !tbaa !27
  %181 = load double, double* %castinttoptr, align 8, !tbaa !27
  %182 = fdiv double %180, %181
  store double %182, double* %castinttoptr3, align 8, !tbaa !27
  %183 = trunc i64 %177 to i32
  %184 = icmp eq i32 %183, %164
  br i1 %184, label %185, label %175

; <label>:185:                                    ; preds = %175, %161
  %phibase_37 = phi double* [ %castinttoptr3, %175 ], [ %phibase_29, %161 ]
  %phidx_38 = phi i64 [ %178, %175 ], [ %phidx_30, %161 ]
  %186 = or i64 %170, 63
  %relidx_97 = sub i64 %186, %phidx_38
  %187 = getelementptr double, double* %phibase_37, i64 %relidx_97
  %castptrtoint4 = ptrtoint double* %187 to i64
  %injectError5 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint4, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @instrname.2, i32 0, i32 0), i64 -1)
  %castinttoptr6 = inttoptr i64 %injectError5 to double*
  %188 = load double, double* %castinttoptr6, align 8, !tbaa !27
  %189 = mul nuw nsw i64 %162, 65
  %relidx_99 = sub i64 %189, %186
  %190 = getelementptr double, double* %castinttoptr6, i64 %relidx_99
  %castptrtoint7 = ptrtoint double* %190 to i64
  %injectError8 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint7, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @instrname.3, i32 0, i32 0), i64 -1)
  %castinttoptr9 = inttoptr i64 %injectError8 to double*
  %191 = load double, double* %castinttoptr9, align 8, !tbaa !27
  %192 = fdiv double %188, %191
  store double %192, double* %castinttoptr6, align 8, !tbaa !27
  %193 = or i64 %170, 33
  %194 = add nuw nsw i64 %166, 95
  %195 = icmp sgt i64 %193, %194
  br i1 %195, label %217, label %196

; <label>:196:                                    ; preds = %185
  %phibase_43 = phi double* [ %castinttoptr9, %185 ]
  %phidx_44 = phi i64 [ %189, %185 ]
  %197 = shl i64 %162, 6
  %198 = add nuw nsw i64 %197, 64
  %199 = mul nsw i64 %162, -63
  %200 = add nsw i64 %199, -32
  %201 = add nuw nsw i64 %198, %162
  %relidx_101 = sub i64 %201, %phidx_44
  %202 = getelementptr double, double* %phibase_43, i64 %relidx_101
  %castptrtoint10 = ptrtoint double* %202 to i64
  %injectError11 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint10, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @instrname.4, i32 0, i32 0), i64 -1)
  %castinttoptr12 = inttoptr i64 %injectError11 to double*
  br label %203

; <label>:203:                                    ; preds = %203, %196
  %204 = phi i64 [ %215, %203 ], [ %163, %196 ]
  %phibase_49 = phi double* [ %castinttoptr54, %203 ], [ %castinttoptr12, %196 ]
  %phidx_50 = phi i64 [ %210, %203 ], [ %201, %196 ]
  %205 = add nsw i64 %200, %204
  %206 = add nuw nsw i64 %205, %198
  %relidx_103 = sub i64 %206, %phidx_50
  %207 = getelementptr double, double* %phibase_49, i64 %relidx_103
  %castptrtoint49 = ptrtoint double* %207 to i64
  %injectError50 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint49, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @instrname.17, i32 0, i32 0), i64 -1)
  %castinttoptr51 = inttoptr i64 %injectError50 to double*
  %208 = load double, double* %castinttoptr51, align 8, !tbaa !27
  %209 = load double, double* %castinttoptr12, align 8, !tbaa !27
  %210 = add nuw nsw i64 %205, %170
  %relidx_105 = sub i64 %210, %206
  %211 = getelementptr double, double* %castinttoptr51, i64 %relidx_105
  %castptrtoint52 = ptrtoint double* %211 to i64
  %injectError53 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint52, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @instrname.18, i32 0, i32 0), i64 -1)
  %castinttoptr54 = inttoptr i64 %injectError53 to double*
  %212 = load double, double* %castinttoptr54, align 8, !tbaa !27
  %213 = fmul double %209, %212
  %214 = fsub double %208, %213
  store double %214, double* %castinttoptr51, align 8, !tbaa !27
  %215 = add nuw nsw i64 %204, 1
  %216 = icmp slt i64 %204, %194
  br i1 %216, label %203, label %217

; <label>:217:                                    ; preds = %203, %185
  %phibase_41 = phi double* [ %castinttoptr54, %203 ], [ %castinttoptr9, %185 ]
  %phidx_42 = phi i64 [ %210, %203 ], [ %189, %185 ]
  %218 = add nuw nsw i64 %167, 64
  %219 = mul nuw nsw i64 %162, 31
  %220 = add nuw nsw i64 %219, 1985
  %221 = icmp sgt i64 %218, %220
  br i1 %221, label %283, label %222

; <label>:222:                                    ; preds = %217
  %phibase_47 = phi double* [ %phibase_41, %217 ]
  %phidx_48 = phi i64 [ %phidx_42, %217 ]
  %223 = mul nsw i64 %162, -31
  %224 = add nuw nsw i64 %223, 929
  %225 = add i64 %223, 4294967264
  %226 = add nuw nsw i64 %219, 1024
  %227 = trunc i64 %218 to i32
  %228 = trunc i64 %224 to i32
  %229 = trunc i64 %225 to i32
  %230 = trunc i64 %226 to i32
  %231 = trunc i64 %162 to i32
  %232 = trunc i64 %170 to i32
  br label %233

; <label>:233:                                    ; preds = %279, %222
  %234 = phi i32 [ %227, %222 ], [ %280, %279 ]
  %phibase_53 = phi double* [ %phibase_55, %279 ], [ %phibase_47, %222 ]
  %phidx_54 = phi i64 [ %phidx_56, %279 ], [ %phidx_48, %222 ]
  %235 = shl nsw i32 %234, 5
  %236 = add nsw i32 %235, -993
  %237 = sitofp i32 %236 to double
  %238 = fdiv double %237, 3.100000e+01
  %239 = tail call double @ceil(double %238) #12
  %240 = fptosi double %239 to i32
  %241 = sitofp i32 %240 to double
  %242 = add nsw i32 %228, %235
  %243 = sitofp i32 %242 to double
  %244 = fdiv double %243, 3.100000e+01
  %245 = tail call double @floor(double %244) #12
  %246 = fcmp ugt double %241, %245
  br i1 %246, label %279, label %247

; <label>:247:                                    ; preds = %233
  %phibase_57 = phi double* [ %phibase_53, %233 ]
  %phidx_58 = phi i64 [ %phidx_54, %233 ]
  %248 = add nuw nsw i32 %234, 30
  %249 = srem i32 %248, 31
  %250 = icmp eq i32 %249, 0
  %251 = add nsw i32 %229, %234
  %252 = sdiv i32 %251, 31
  %253 = shl nsw i32 %252, 6
  %254 = sub nsw i32 %230, %235
  %255 = add nsw i32 %253, %231
  %256 = sext i32 %255 to i64
  %relidx_107 = sub i64 %256, %phidx_58
  %257 = getelementptr double, double* %phibase_57, i64 %relidx_107
  %castptrtoint64 = ptrtoint double* %257 to i64
  %injectError65 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint64, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @instrname.22, i32 0, i32 0), i64 -1)
  %castinttoptr66 = inttoptr i64 %injectError65 to double*
  br label %258

; <label>:258:                                    ; preds = %247, %275
  %259 = phi i32 [ %240, %247 ], [ %276, %275 ]
  %phibase_59 = phi double* [ %castinttoptr66, %247 ], [ %phibase_63, %275 ]
  %phidx_60 = phi i64 [ %256, %247 ], [ %phidx_64, %275 ]
  br i1 %250, label %260, label %275

; <label>:260:                                    ; preds = %258
  %phibase_61 = phi double* [ %phibase_59, %258 ]
  %phidx_62 = phi i64 [ %phidx_60, %258 ]
  %261 = mul nsw i32 %259, 31
  %262 = add i32 %254, %261
  %263 = sdiv i32 %262, 31
  %264 = add nsw i32 %263, %253
  %265 = sext i32 %264 to i64
  %relidx_109 = sub i64 %265, %phidx_62
  %266 = getelementptr double, double* %phibase_61, i64 %relidx_109
  %castptrtoint67 = ptrtoint double* %266 to i64
  %injectError68 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint67, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @instrname.23, i32 0, i32 0), i64 -1)
  %castinttoptr69 = inttoptr i64 %injectError68 to double*
  %267 = load double, double* %castinttoptr69, align 8, !tbaa !27
  %268 = load double, double* %castinttoptr66, align 8, !tbaa !27
  %269 = add nsw i32 %263, %232
  %270 = sext i32 %269 to i64
  %relidx_111 = sub i64 %270, %265
  %271 = getelementptr double, double* %castinttoptr69, i64 %relidx_111
  %castptrtoint70 = ptrtoint double* %271 to i64
  %injectError71 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint70, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @instrname.24, i32 0, i32 0), i64 -1)
  %castinttoptr72 = inttoptr i64 %injectError71 to double*
  %272 = load double, double* %castinttoptr72, align 8, !tbaa !27
  %273 = fmul double %268, %272
  %274 = fsub double %267, %273
  store double %274, double* %castinttoptr69, align 8, !tbaa !27
  br label %275

; <label>:275:                                    ; preds = %258, %260
  %phibase_63 = phi double* [ %phibase_59, %258 ], [ %castinttoptr72, %260 ]
  %phidx_64 = phi i64 [ %phidx_60, %258 ], [ %270, %260 ]
  %276 = add nsw i32 %259, 1
  %277 = sitofp i32 %276 to double
  %278 = fcmp ugt double %277, %245
  br i1 %278, label %279, label %258

; <label>:279:                                    ; preds = %275, %233
  %phibase_55 = phi double* [ %phibase_63, %275 ], [ %phibase_53, %233 ]
  %phidx_56 = phi i64 [ %phidx_64, %275 ], [ %phidx_54, %233 ]
  %280 = add nuw nsw i32 %234, 1
  %281 = sext i32 %234 to i64
  %282 = icmp slt i64 %281, %220
  br i1 %282, label %233, label %283

; <label>:283:                                    ; preds = %279, %217
  %phibase_45 = phi double* [ %phibase_55, %279 ], [ %phibase_41, %217 ]
  %phidx_46 = phi i64 [ %phidx_56, %279 ], [ %phidx_42, %217 ]
  %284 = add nuw nsw i64 %162, 1
  %285 = add nuw nsw i64 %165, 63
  %286 = add nuw nsw i32 %164, 62
  %287 = add nuw nsw i64 %163, 64
  %288 = icmp eq i64 %284, 62
  br i1 %288, label %289, label %161

; <label>:289:                                    ; preds = %283
  %phibase_51 = phi double* [ %phibase_45, %283 ]
  %phidx_52 = phi i64 [ %phidx_46, %283 ]
  %290 = getelementptr double, double* %0, i64 %phidx_52
  %castptrtoint73 = ptrtoint double* %290 to i64
  %injectError74 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint73, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @instrname.25, i32 0, i32 0), i64 -1)
  %castinttoptr75 = inttoptr i64 %injectError74 to double*
  %castadr1 = ptrtoint double* %phibase_51 to i64
  %castadr2 = ptrtoint double* %castinttoptr75 to i64
  %cmpopdet = icmp ne i64 %castadr1, %castadr2
  %newdetval = zext i1 %cmpopdet to i64
  %ldolddetval = load i64, i64* @detectCounter
  %updetval = shl i64 %newdetval, 1
  %updetval121 = or i64 %updetval, %ldolddetval
  store i64 %updetval121, i64* @detectCounter
  %relidx_113 = sub i64 4031, %phidx_52
  %291 = getelementptr double, double* %phibase_51, i64 %relidx_113
  %castptrtoint76 = ptrtoint double* %291 to i64
  %injectError77 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint76, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @instrname.26, i32 0, i32 0), i64 -1)
  %castinttoptr78 = inttoptr i64 %injectError77 to double*
  %292 = load double, double* %castinttoptr78, align 8, !tbaa !27
  %relidx_115 = sub i64 4030, 4031
  %293 = getelementptr double, double* %castinttoptr78, i64 %relidx_115
  %castptrtoint79 = ptrtoint double* %293 to i64
  %injectError80 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint79, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @instrname.27, i32 0, i32 0), i64 -1)
  %castinttoptr81 = inttoptr i64 %injectError80 to double*
  %294 = load double, double* %castinttoptr81, align 8, !tbaa !27
  %295 = fdiv double %292, %294
  store double %295, double* %castinttoptr78, align 8, !tbaa !27
  %relidx_117 = sub i64 4095, 4030
  %296 = getelementptr double, double* %castinttoptr81, i64 %relidx_117
  %castptrtoint82 = ptrtoint double* %296 to i64
  %injectError83 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint82, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @instrname.28, i32 0, i32 0), i64 -1)
  %castinttoptr84 = inttoptr i64 %injectError83 to double*
  %297 = load double, double* %castinttoptr84, align 8, !tbaa !27
  %relidx_119 = sub i64 4094, 4095
  %298 = getelementptr double, double* %castinttoptr84, i64 %relidx_119
  %castptrtoint85 = ptrtoint double* %298 to i64
  %injectError86 = call i64 @_Z22injectSoftErrorIntTy64xPKcx(i64 %castptrtoint85, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @instrname.29, i32 0, i32 0), i64 -1)
  %castinttoptr87 = inttoptr i64 %injectError86 to double*
  %299 = load double, double* %castinttoptr87, align 8, !tbaa !27
  %300 = fmul double %295, %299
  %301 = fsub double %297, %300
  store double %301, double* %castinttoptr84, align 8, !tbaa !27
  ret void
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #7

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

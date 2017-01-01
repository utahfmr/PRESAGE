; ModuleID = 'jac1_inst_temp.bc'
source_filename = "jac1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timezone = type { i32, i32 }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Error return from gettimeofday: %d\00", align 1
@a = common global [2000000 x double] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%lf \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@b = common global [2000000 x double] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [33 x i8] c"\0AINFO: Insufficient arguments!\0A\0A\00", align 1
@dimcount = external global i32, align 4
@psgdim = external global [0 x i32], align 4
@dim0 = external global i64, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c".test\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@detectCounter = external global i64, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"\0AINFO: Soft error detected\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\0AINFO: No Soft errors detected\0A\00", align 1
@t_start = common global double 0.000000e+00, align 8
@t_end = common global double 0.000000e+00, align 8
@str = private unnamed_addr constant [31 x i8] c"\0AINFO: No Soft errors detected\00"
@str.8 = private unnamed_addr constant [27 x i8] c"\0AINFO: Soft error detected\00"
@str.9 = private unnamed_addr constant [32 x i8] c"\0AINFO: Insufficient arguments!\0A\00"

; Function Attrs: noinline nounwind uwtable
define double @rtclock() #0 {
  %1 = alloca %struct.timezone, align 4
  %2 = alloca %struct.timeval, align 8
  %3 = bitcast %struct.timezone* %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #6
  %4 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #6
  %5 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* nonnull %1) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %0
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %5)
  br label %9

; <label>:9:                                      ; preds = %0, %7
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !1
  %12 = sitofp i64 %11 to double
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %14 = load i64, i64* %13, align 8, !tbaa !6
  %15 = sitofp i64 %14 to double
  %16 = fmul double %15, 1.000000e-06
  %17 = fadd double %12, %16
  call void @llvm.lifetime.end(i64 16, i8* %4) #6
  call void @llvm.lifetime.end(i64 8, i8* %3) #6
  ret double %17
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: noinline norecurse nounwind uwtable
define void @init_array() #3 {
  br label %1

; <label>:1:                                      ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %7, %1 ]
  %3 = trunc i64 %2 to i32
  %4 = sitofp i32 %3 to double
  %5 = fdiv double %4, 2.000000e+06
  %6 = getelementptr inbounds [2000000 x double], [2000000 x double]* @a, i64 0, i64 %2
  store double %5, double* %6, align 8, !tbaa !7
  %7 = add nuw nsw i64 %2, 1
  %8 = icmp eq i64 %7, 2000000
  br i1 %8, label %9, label %1

; <label>:9:                                      ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @print_array() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  br label %2

; <label>:2:                                      ; preds = %14, %0
  %3 = phi i64 [ 0, %0 ], [ %15, %14 ]
  %4 = phi %struct._IO_FILE* [ %1, %0 ], [ %16, %14 ]
  %5 = getelementptr inbounds [2000000 x double], [2000000 x double]* @a, i64 0, i64 %3
  %6 = load double, double* %5, align 8, !tbaa !7
  %7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), double %6) #7
  %8 = trunc i64 %3 to i32
  %9 = srem i32 %8, 80
  %10 = icmp eq i32 %9, 20
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %13 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %12) #7
  br label %14

; <label>:14:                                     ; preds = %2, %11
  %15 = add nuw nsw i64 %3, 1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %17 = icmp eq i64 %15, 2000000
  br i1 %17, label %18, label %2

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %16) #7
  ret void
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: noinline norecurse nounwind uwtable
define void @func() #3 {
  br label %1

; <label>:1:                                      ; preds = %34, %0
  %2 = phi i64 [ 0, %0 ], [ %36, %34 ]
  %3 = phi i32 [ 1999999, %0 ], [ %38, %34 ]
  %4 = phi i64 [ 3, %0 ], [ %37, %34 ]
  %5 = load double, double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @a, i64 0, i64 1), align 8, !tbaa !7
  %6 = load double, double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @a, i64 0, i64 2), align 16, !tbaa !7
  %7 = fadd double %5, %6
  %8 = load double, double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @a, i64 0, i64 3), align 8, !tbaa !7
  %9 = fadd double %7, %8
  %10 = fmul double %9, 3.333300e-01
  store double %10, double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @b, i64 0, i64 2), align 16, !tbaa !7
  %11 = mul nsw i64 %2, -2
  br label %12

; <label>:12:                                     ; preds = %12, %1
  %13 = phi i64 [ %31, %12 ], [ %4, %1 ]
  %14 = add nsw i64 %13, %11
  %15 = add nsw i64 %14, -1
  %16 = getelementptr inbounds [2000000 x double], [2000000 x double]* @a, i64 0, i64 %15
  %17 = load double, double* %16, align 8, !tbaa !7
  %18 = getelementptr inbounds [2000000 x double], [2000000 x double]* @a, i64 0, i64 %14
  %19 = load double, double* %18, align 8, !tbaa !7
  %20 = fadd double %17, %19
  %21 = add nuw nsw i64 %14, 1
  %22 = getelementptr inbounds [2000000 x double], [2000000 x double]* @a, i64 0, i64 %21
  %23 = load double, double* %22, align 8, !tbaa !7
  %24 = fadd double %20, %23
  %25 = fmul double %24, 3.333300e-01
  %26 = getelementptr inbounds [2000000 x double], [2000000 x double]* @b, i64 0, i64 %14
  store double %25, double* %26, align 8, !tbaa !7
  %27 = getelementptr inbounds [2000000 x double], [2000000 x double]* @b, i64 0, i64 %15
  %28 = bitcast double* %27 to i64*
  %29 = load i64, i64* %28, align 8, !tbaa !7
  %30 = bitcast double* %16 to i64*
  store i64 %29, i64* %30, align 8, !tbaa !7
  %31 = add nuw nsw i64 %13, 1
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %32, %3
  br i1 %33, label %34, label %12

; <label>:34:                                     ; preds = %12
  %35 = load i64, i64* bitcast (double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @b, i64 0, i64 1999998) to i64*), align 16, !tbaa !7
  store i64 %35, i64* bitcast (double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @a, i64 0, i64 1999998) to i64*), align 16, !tbaa !7
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
  %8 = load i8*, i8** %7, align 8, !tbaa !9
  %9 = tail call i32 @atoi(i8* %8) #8
  store i32 1, i32* @dimcount, align 4, !tbaa !11
  store i32 %9, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @psgdim, i64 0, i64 0), align 4, !tbaa !11
  %10 = sext i32 %9 to i64
  store i64 %10, i64* @dim0, align 8, !tbaa !13
  tail call void @func()
  %11 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
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
  %18 = load i8*, i8** %17, align 8, !tbaa !9
  tail call void @print_data_1d(i32 2000000, double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @a, i64 0, i64 0), i8* %18, i32 1) #6
  %19 = load i8*, i8** %17, align 8, !tbaa !9
  tail call void @print_data_1d(i32 2000000, double* getelementptr inbounds ([2000000 x double], [2000000 x double]* @b, i64 0, i64 0), i8* %19, i32 0) #6
  br label %20

; <label>:20:                                     ; preds = %16, %14
  %21 = load i64, i64* @detectCounter, align 8, !tbaa !13
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %20
  %24 = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @str.8, i64 0, i64 0))
  br label %27

; <label>:25:                                     ; preds = %20
  %26 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str, i64 0, i64 0))
  br label %27

; <label>:27:                                     ; preds = %25, %23
  %28 = tail call i32 @printFaultSitesData() #6
  %29 = tail call i32 @printFaultInjectionData() #6
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #2

declare void @print_data_1d(i32, double*, i8*, i32) #5

declare i32 @printFaultSitesData() #5

declare i32 @printFaultInjectionData() #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #6

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (trunk)"}
!1 = !{!2, !3, i64 0}
!2 = !{!"timeval", !3, i64 0, !3, i64 8}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!2, !3, i64 8}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !4, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long long", !4, i64 0}

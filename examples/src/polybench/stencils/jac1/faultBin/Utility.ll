; ModuleID = 'Utility.bc'
source_filename = "/home/arnabd/apps/PRESAGE//examples/src/polybench/utilities/Utility.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%lld,\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%lf,\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1

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
  %6 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ]
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %1)
  %12 = tail call i32 @fclose(%struct._IO_FILE* %10)
  ret void
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @writeOVRData(i8* nocapture readonly, double, i32) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ]
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), double %1)
  %12 = tail call i32 @fclose(%struct._IO_FILE* %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @print_data_3d(i32, i32, i32, double* nocapture readonly, i8* nocapture readonly, i32) #0 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
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
  %33 = load double, double* %32, align 8, !tbaa !1
  %34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double %33)
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
  %8 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %11

; <label>:9:                                      ; preds = %5
  %10 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
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
  %25 = load double, double* %24, align 8, !tbaa !1
  %26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double %25)
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
  %7 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %10

; <label>:8:                                      ; preds = %4
  %9 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %10

; <label>:10:                                     ; preds = %8, %6
  %11 = phi %struct._IO_FILE* [ %7, %6 ], [ %9, %8 ]
  %12 = icmp sgt i32 %0, 0
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %10, %13
  %14 = phi i64 [ %18, %13 ], [ 0, %10 ]
  %15 = getelementptr inbounds double, double* %1, i64 %14
  %16 = load double, double* %15, align 8, !tbaa !1
  %17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double %16)
  %18 = add nuw nsw i64 %14, 1
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %19, %0
  br i1 %20, label %21, label %13

; <label>:21:                                     ; preds = %13, %10
  %22 = tail call i32 @fclose(%struct._IO_FILE* %11)
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (trunk)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}

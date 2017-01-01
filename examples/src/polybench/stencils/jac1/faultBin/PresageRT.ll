; ModuleID = 'PresageRT.bc'
source_filename = "/home/arnabd/apps/PRESAGE//runtime/PresageRT.C"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@init_flag = global i32 0, align 4
@dimcount = global i32 0, align 4
@psgdim = global [10 x i32] zeroinitializer, align 16
@prf_data = global [512 x [20 x i64]] zeroinitializer, align 16
@dim0 = global i64 0, align 8
@dim1 = global i64 0, align 8
@dim2 = global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"\0AINFO: Gep id %lld has actual rel id is %lld where as computed rel id is %lld\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"MAX_UNIQUE_COUNT_EXCEEDED\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%u:%lld \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline norecurse nounwind readnone uwtable
define void @psgProtect(double* nocapture, i64, i64) #0 {
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @_Z11initPrfDatav() #1 {
  br label %1

; <label>:1:                                      ; preds = %8, %0
  %2 = phi i64 [ 0, %0 ], [ %9, %8 ]
  br label %3

; <label>:3:                                      ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  %5 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %2, i64 %4
  store i64 9223372036854775807, i64* %5, align 8, !tbaa !1
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
define void @_Z8psgRelidxxx(i64, i64, i64) #2 {
  %4 = icmp eq i64 %1, %2
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 %0, i64 %1, i64 %2)
  br label %7

; <label>:7:                                      ; preds = %3, %5
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: noinline nounwind uwtable
define void @_Z10psgProfilexxPKc(i64, i64, i8* nocapture readonly) #2 {
  %4 = load i32, i32* @init_flag, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call void @_Z11initPrfDatav()
  store i32 1, i32* @init_flag, align 4, !tbaa !5
  br label %7

; <label>:7:                                      ; preds = %3, %6
  %8 = icmp sgt i64 %0, 511
  br i1 %8, label %67, label %9

; <label>:9:                                      ; preds = %7, %17
  %10 = phi i32 [ %18, %17 ], [ 0, %7 ]
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 %11
  %13 = load i64, i64* %12, align 8, !tbaa !1
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
  store i64 %1, i64* %12, align 8, !tbaa !1
  %21 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %27

; <label>:22:                                     ; preds = %17
  %23 = icmp eq i32 %18, 20
  %24 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br i1 %23, label %25, label %27

; <label>:25:                                     ; preds = %22
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %24)
  br label %64

; <label>:27:                                     ; preds = %20, %22
  %28 = phi i32 [ %10, %20 ], [ %18, %22 ]
  %29 = phi %struct._IO_FILE* [ %21, %20 ], [ %24, %22 ]
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 %30
  %32 = load i64, i64* %31, align 8, !tbaa !1
  %33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %28, i64 %32)
  %34 = load i32, i32* @dimcount, align 4, !tbaa !5
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %27
  %37 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  br label %40

; <label>:38:                                     ; preds = %27
  %39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  br label %40

; <label>:40:                                     ; preds = %38, %36
  %41 = load i32, i32* @dimcount, align 4, !tbaa !5
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
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  br label %60

; <label>:53:                                     ; preds = %43
  %54 = icmp eq i32 %45, %46
  br i1 %54, label %55, label %60

; <label>:55:                                     ; preds = %53
  %56 = zext i32 %45 to i64
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* @psgdim, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !5
  %59 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  br label %60

; <label>:60:                                     ; preds = %48, %55, %53
  %61 = add i32 %45, 1
  %62 = load i32, i32* @dimcount, align 4, !tbaa !5
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %43, label %64

; <label>:64:                                     ; preds = %60, %40, %25
  %65 = phi %struct._IO_FILE* [ %24, %25 ], [ %29, %40 ], [ %29, %60 ]
  %66 = tail call i32 @fclose(%struct._IO_FILE* %65)
  br label %67

; <label>:67:                                     ; preds = %9, %7, %64
  ret void
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #3

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { noinline norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (trunk)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}

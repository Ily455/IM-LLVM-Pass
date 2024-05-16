; ModuleID = '../prod_mat.ll'
source_filename = "prod_mat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%jYwbUkqDIo = type { [300 x [300 x i32]] }

@"302nSL1Emi" = private unnamed_addr constant [5 x i8] c"%5d \00", align 1
@eKuM1zpmSy = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@iGNUZiWhYA = private unnamed_addr constant [11 x i8] c"Matrix 1:\0A\00", align 1
@"6S1RvS8mJq" = private unnamed_addr constant [12 x i8] c"\0AMatrix 2:\0A\00", align 1
@plusBATXby = private unnamed_addr constant [18 x i8] c"\0AProduct Matrix:\0A\00", align 1
@Aw16hsxCNG = private unnamed_addr constant [6 x i8] c"\0A%lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @"7Vgw7kcQE8"(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %9 = load i32, ptr %4, align 4
  %10 = zext i32 %9 to i64
  %11 = load i32, ptr %5, align 4
  %12 = zext i32 %11 to i64
  store i32 0, ptr %7, align 4
  br label %13

13:                                               ; preds = %38, %3
  %14 = load i32, ptr %7, align 4
  %15 = load i32, ptr %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  store i32 0, ptr %8, align 4
  br label %18

18:                                               ; preds = %33, %17
  %19 = load i32, ptr %8, align 4
  %20 = load i32, ptr %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 8
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %25, %12
  %27 = getelementptr inbounds i32, ptr %23, i64 %26
  %28 = load i32, ptr %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %27, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = call i32 (ptr, ...) @printf(ptr noundef @"302nSL1Emi", i32 noundef %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, ptr %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %8, align 4
  br label %18, !llvm.loop !6

36:                                               ; preds = %18
  %37 = call i32 (ptr, ...) @printf(ptr noundef @eKuM1zpmSy)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, ptr %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %7, align 4
  br label %13, !llvm.loop !8

41:                                               ; preds = %13
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @"9svq4VCyjV"(ptr dead_on_unwind noalias writable sret(%jYwbUkqDIo) align 4 %0, ptr noundef byval(%jYwbUkqDIo) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  br label %5

5:                                                ; preds = %26, %2
  %6 = load i32, ptr %3, align 4
  %7 = icmp slt i32 %6, 300
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  store i32 0, ptr %4, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %10, 300
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = getelementptr inbounds %jYwbUkqDIo, ptr %1, i32 0, i32 0
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [300 x [300 x i32]], ptr %13, i64 0, i64 %15
  %17 = load i32, ptr %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [300 x i32], ptr %16, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = mul nsw i32 %20, 0
  store i32 %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %12
  %23 = load i32, ptr %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %4, align 4
  br label %9, !llvm.loop !9

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %3, align 4
  br label %5, !llvm.loop !10

29:                                               ; preds = %5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 8 %1, i64 360000, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @"5xMA0RcOI9"(ptr dead_on_unwind noalias writable sret(%jYwbUkqDIo) align 4 %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %jYwbUkqDIo, align 4
  %7 = alloca %jYwbUkqDIo, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 4 %0, i64 360000, i1 false)
  call void @"9svq4VCyjV"(ptr dead_on_unwind writable sret(%jYwbUkqDIo) align 4 %6, ptr noundef byval(%jYwbUkqDIo) align 8 %7)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %6, i64 360000, i1 false)
  store i32 0, ptr %8, align 4
  br label %11

11:                                               ; preds = %57, %3
  %12 = load i32, ptr %8, align 4
  %13 = icmp slt i32 %12, 300
  br i1 %13, label %14, label %60

14:                                               ; preds = %11
  store i32 0, ptr %9, align 4
  br label %15

15:                                               ; preds = %53, %14
  %16 = load i32, ptr %9, align 4
  %17 = icmp slt i32 %16, 300
  br i1 %17, label %18, label %56

18:                                               ; preds = %15
  store i32 0, ptr %10, align 4
  br label %19

19:                                               ; preds = %49, %18
  %20 = load i32, ptr %10, align 4
  %21 = icmp slt i32 %20, 300
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  %23 = load ptr, ptr %4, align 8
  %24 = load i32, ptr %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [300 x i32], ptr %23, i64 %25
  %27 = load i32, ptr %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [300 x i32], ptr %26, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %5, align 8
  %32 = load i32, ptr %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [300 x i32], ptr %31, i64 %33
  %35 = load i32, ptr %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [300 x i32], ptr %34, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = mul nsw i32 %30, %38
  %40 = getelementptr inbounds %jYwbUkqDIo, ptr %0, i32 0, i32 0
  %41 = load i32, ptr %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [300 x [300 x i32]], ptr %40, i64 0, i64 %42
  %44 = load i32, ptr %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [300 x i32], ptr %43, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = add nsw i32 %47, %39
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %22
  %50 = load i32, ptr %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %10, align 4
  br label %19, !llvm.loop !11

52:                                               ; preds = %19
  br label %53

53:                                               ; preds = %52
  %54 = load i32, ptr %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %9, align 4
  br label %15, !llvm.loop !12

56:                                               ; preds = %15
  br label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %8, align 4
  br label %11, !llvm.loop !13

60:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca double, align 8
  %5 = alloca [300 x [300 x i32]], align 16
  %6 = alloca [300 x [300 x i32]], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %jYwbUkqDIo, align 4
  store i32 0, ptr %1, align 4
  %12 = call i64 @clock() #4
  store i64 %12, ptr %2, align 8
  %13 = call i64 @time(ptr noundef null) #4
  %14 = trunc i64 %13 to i32
  call void @srand(i32 noundef %14) #4
  store i32 0, ptr %7, align 4
  br label %15

15:                                               ; preds = %35, %0
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %16, 300
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  store i32 0, ptr %8, align 4
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, ptr %8, align 4
  %21 = icmp slt i32 %20, 300
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = call i32 @rand() #4
  %24 = srem i32 %23, 1000
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [300 x [300 x i32]], ptr %5, i64 0, i64 %26
  %28 = load i32, ptr %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [300 x i32], ptr %27, i64 0, i64 %29
  store i32 %24, ptr %30, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, ptr %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %8, align 4
  br label %19, !llvm.loop !14

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load i32, ptr %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %7, align 4
  br label %15, !llvm.loop !15

38:                                               ; preds = %15
  store i32 0, ptr %9, align 4
  br label %39

39:                                               ; preds = %59, %38
  %40 = load i32, ptr %9, align 4
  %41 = icmp slt i32 %40, 300
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  store i32 0, ptr %10, align 4
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i32, ptr %10, align 4
  %45 = icmp slt i32 %44, 300
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = call i32 @rand() #4
  %48 = srem i32 %47, 1000
  %49 = load i32, ptr %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [300 x [300 x i32]], ptr %6, i64 0, i64 %50
  %52 = load i32, ptr %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [300 x i32], ptr %51, i64 0, i64 %53
  store i32 %48, ptr %54, align 4
  br label %55

55:                                               ; preds = %46
  %56 = load i32, ptr %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %10, align 4
  br label %43, !llvm.loop !16

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %9, align 4
  br label %39, !llvm.loop !17

62:                                               ; preds = %39
  %63 = call i32 (ptr, ...) @printf(ptr noundef @iGNUZiWhYA)
  %64 = getelementptr inbounds [300 x [300 x i32]], ptr %5, i64 0, i64 0
  call void @"7Vgw7kcQE8"(i32 noundef 300, i32 noundef 300, ptr noundef %64)
  %65 = call i32 (ptr, ...) @printf(ptr noundef @"6S1RvS8mJq")
  %66 = getelementptr inbounds [300 x [300 x i32]], ptr %6, i64 0, i64 0
  call void @"7Vgw7kcQE8"(i32 noundef 300, i32 noundef 300, ptr noundef %66)
  %67 = call i32 (ptr, ...) @printf(ptr noundef @plusBATXby)
  %68 = getelementptr inbounds [300 x [300 x i32]], ptr %5, i64 0, i64 0
  %69 = getelementptr inbounds [300 x [300 x i32]], ptr %6, i64 0, i64 0
  call void @"5xMA0RcOI9"(ptr dead_on_unwind writable sret(%jYwbUkqDIo) align 4 %11, ptr noundef %68, ptr noundef %69)
  %70 = getelementptr inbounds %jYwbUkqDIo, ptr %11, i32 0, i32 0
  %71 = getelementptr inbounds [300 x [300 x i32]], ptr %70, i64 0, i64 0
  call void @"7Vgw7kcQE8"(i32 noundef 300, i32 noundef 300, ptr noundef %71)
  %72 = call i64 @clock() #4
  store i64 %72, ptr %3, align 8
  %73 = load i64, ptr %3, align 8
  %74 = load i64, ptr %2, align 8
  %75 = sub nsw i64 %73, %74
  %76 = sitofp i64 %75 to double
  %77 = fdiv double %76, 1.000000e+06
  store double %77, ptr %4, align 8
  %78 = load double, ptr %4, align 8
  %79 = call i32 (ptr, ...) @printf(ptr noundef @Aw16hsxCNG, double noundef %78)
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() #3

; Function Attrs: nounwind
declare void @srand(i32 noundef) #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @rand() #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git a3efc53f168b1451803a40075201c3490d6e3928)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}

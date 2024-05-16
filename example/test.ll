; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.structurino = type { i32, i32 }

@varstandsforvideoassistantrefereee = dso_local global i32 666, align 4
@.str = private unnamed_addr constant [9 x i8] c"Sum: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Global variableuuuuh: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_function(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = add nsw i32 %5, %6
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.structurino, align 4
  store i32 0, ptr %1, align 4
  %3 = getelementptr inbounds %struct.structurino, ptr %2, i32 0, i32 0
  store i32 400, ptr %3, align 4
  %4 = getelementptr inbounds %struct.structurino, ptr %2, i32 0, i32 1
  store i32 20, ptr %4, align 4
  %5 = load i32, ptr @varstandsforvideoassistantrefereee, align 4
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %5)
  %7 = getelementptr inbounds %struct.structurino, ptr %2, i32 0, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.structurino, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  call void @my_function(i32 noundef %8, i32 noundef %10)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git a3efc53f168b1451803a40075201c3490d6e3928)"}

; ModuleID = 'example3.c'
source_filename = "example3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1000 x i8], align 16
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %6 = call ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %6, ptr %3, align 8
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %0, %24
  %8 = load ptr, ptr %3, align 8
  %9 = call i32 @_IO_getc(ptr noundef %8)
  %10 = trunc i32 %9 to i8
  store i8 %10, ptr %4, align 1
  %11 = load i8, ptr %4, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %25

15:                                               ; preds = %7
  %16 = load i8, ptr %4, align 1
  %17 = load i32, ptr %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %5, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [1000 x i8], ptr %2, i64 0, i64 %19
  store i8 %16, ptr %20, align 1
  %21 = load i32, ptr %5, align 4
  %22 = icmp sge i32 %21, 1000
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %25

24:                                               ; preds = %15
  br label %7

25:                                               ; preds = %23, %14
  %26 = getelementptr inbounds [1000 x i8], ptr %2, i64 0, i64 0
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %26)
  %28 = load i32, ptr %1, align 4
  ret i32 %28
}

declare ptr @fopen(ptr noundef, ptr noundef) #1

declare i32 @_IO_getc(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 17.0.6 (++20231120125743+f8575ff46f89-1~exp1~20231120125800.70)"}

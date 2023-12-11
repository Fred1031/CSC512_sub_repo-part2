; ModuleID = 'example4.c'
source_filename = "example4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.data = type { [100 x i8], [100 x i8], [20 x i8], [20 x i8], [20 x i8], [40 x i8] }
%struct.data.0 = type { [100 x i8], [100 x i8], [20 x i8], [20 x i8], [20 x i8], [40 x i8] }
%struct.Item = type { [100 x i8], [100 x i8], [20 x i8], [20 x i8], [20 x i8], [70 x i8] }
%struct.inventory = type { [25 x i8], [25 x i8], [10 x i8], [10 x i8], i32, [20 x i8] }
%struct.caminho = type { ptr, double, ptr }
%struct.pilha = type { i32, ptr }

@.str = private unnamed_addr constant [24 x i8] c"automobile_database.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Enter Product name : \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Enter Company name : \00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Enter Price of the product : \00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Enter Warranty of the product : \00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Enter number of items available : \00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Enter Model no : \00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"%s     %s     %s     %s     %s     %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"\0AThe new product is successfully added\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"File not accessed\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"%s     %s     %s     %s     %s     %s\00", align 1
@.str.14 = private unnamed_addr constant [107 x i8] c"1.To delete a product with specified company name.\0A2.To delete products with specified warranty\0A0.To quit\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"\0AEnter a number to perform the operation : \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Enter a valid option:\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"\0AEnter Product name : \00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"\0AThe specified item is deleted successfully.\0A\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"\0AUnable to find the company or the product you entered\0A\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"Please enter a valid company and product name\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"temp.txt\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Enter Warranty(in years) : \00", align 1
@.str.24 = private unnamed_addr constant [71 x i8] c"\0AThe products with specified warranty have been successfully deleted.\0A\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"No product found with the given warranty\0AEnter a\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"Enter the product : \00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"%s %s %s %s %s %s\00", align 1
@.str.28 = private unnamed_addr constant [96 x i8] c"\0AProduct_name : %s\0ACompany_name : %s\0APrice : %s\0AWarranty : %s\0AQuantity : %s\0AModel_number :  %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"\0ASORRY!!..specified product is unavailable.\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"%s %s %s %s %d %s\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"\0AEnter the value of the quantity:\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"\0AThe products and their companies with quantity less than %d:\0A\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"\0A%d.Product : %s\0ACompany Name : %s\0AQuantity : %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [67 x i8] c"\0ASorry!There are no products less than the quantity %d.\0ATry Again\0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"\0A%.2lf\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"\0AErro na aloca\C3\A7\C3\A3o do caminho\00", align 1
@.str.37 = private unnamed_addr constant [169 x i8] c"\0A\0ACaso n\C3\BAmero %2d\0A%3d Rotas c\C3\ADclicas\0APropor\C3\A7\C3\A3o de lucro desejada %.2lf\0AMelhor propor\C3\A7\C3\A3o de lucro encontrada %.2lf\0ARela\C3\A7\C3\A3o lucro encontrado com o esperado %.2lf\0A\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"resultados.txt\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"Falha ao abrir/criar o arquivo\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"\0A\0AErro na grava\C3\A7\C3\A3o dos dados no arquivo\0A\00", align 1
@.str.41 = private unnamed_addr constant [103 x i8] c"\0A\0ACaso n\C3\BAmero %2d\0ASem rotas c\C3\ADclicas encontradas para a propor\C3\A7\C3\A3o de lucro desejada! (P=%.2lf) :(\0A\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"\0A\0A     \00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"  %2d  \00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"%2d   \00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"%.2lf \00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.48 = private unnamed_addr constant [56 x i8] c"WELCOME TO C AUTOMOBILE INVENTORY MANGEMENT DATABASE!\0A\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"Main Menu:\0A\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"----------\0A\00", align 1
@.str.51 = private unnamed_addr constant [69 x i8] c"1.Display all the Products with company names and their parameters.\0A\00", align 1
@.str.52 = private unnamed_addr constant [60 x i8] c"2.Display the parameters of the specified Product.(search)\0A\00", align 1
@.str.53 = private unnamed_addr constant [95 x i8] c"3.Display the items with prices of the specified product in sorted order or in a given range.\0A\00", align 1
@.str.54 = private unnamed_addr constant [109 x i8] c"4.Display the products with warranty less than or greater than or equal to given value or in a given range.\0A\00", align 1
@.str.55 = private unnamed_addr constant [61 x i8] c"5.Display the products with quantity less than given value.\0A\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"6.Add an item.\0A\00", align 1
@.str.57 = private unnamed_addr constant [52 x i8] c"7.Delete an item or items with specified warranty.\0A\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"8.Modify a parameter.\0A\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"9.Quit the program.\0A\00", align 1
@.str.60 = private unnamed_addr constant [56 x i8] c"\0AChoose a number to perform the corresponding action : \00", align 1
@.str.61 = private unnamed_addr constant [47 x i8] c"\0AYou have chosen to view all the parameters.\0A\0A\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"\0AYou have chosen to search a specified item.\0A\00", align 1
@.str.64 = private unnamed_addr constant [111 x i8] c"\0AYou have chosen to display the items with prices of a specified product in sorted order or in a given range.\0A\00", align 1
@.str.65 = private unnamed_addr constant [127 x i8] c"\0AYou have chosen to display the products with warranty less than or greater than or equal to given value or in a given range.\0A\00", align 1
@.str.66 = private unnamed_addr constant [79 x i8] c"\0AYou have chosen to display the products with quantity less than given value.\0A\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"\0AYou have chosen to add an item.\0A\00", align 1
@.str.68 = private unnamed_addr constant [69 x i8] c"\0AYou have chosen to delete an item or items of  specified warranty.\0A\00", align 1
@.str.69 = private unnamed_addr constant [40 x i8] c"\0AYou have chosen to modify a parameter\0A\00", align 1
@.str.70 = private unnamed_addr constant [52 x i8] c"\0AProgram is terminated as you have chosen to quit.\0A\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"Enter Valid Option.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Add() #0 {
  %1 = alloca %struct.data, align 1
  %2 = alloca ptr, align 8
  %3 = call ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %3, ptr %2, align 8
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %5 = getelementptr inbounds %struct.data, ptr %1, i32 0, i32 0
  %6 = getelementptr inbounds [100 x i8], ptr %5, i64 0, i64 0
  %7 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.3, ptr noundef %6)
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %9 = getelementptr inbounds %struct.data, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds [100 x i8], ptr %9, i64 0, i64 0
  %11 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.3, ptr noundef %10)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %13 = getelementptr inbounds %struct.data, ptr %1, i32 0, i32 2
  %14 = getelementptr inbounds [20 x i8], ptr %13, i64 0, i64 0
  %15 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.3, ptr noundef %14)
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %17 = getelementptr inbounds %struct.data, ptr %1, i32 0, i32 3
  %18 = getelementptr inbounds [20 x i8], ptr %17, i64 0, i64 0
  %19 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.3, ptr noundef %18)
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %21 = getelementptr inbounds %struct.data, ptr %1, i32 0, i32 4
  %22 = getelementptr inbounds [20 x i8], ptr %21, i64 0, i64 0
  %23 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.3, ptr noundef %22)
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %25 = getelementptr inbounds %struct.data, ptr %1, i32 0, i32 5
  %26 = getelementptr inbounds [40 x i8], ptr %25, i64 0, i64 0
  %27 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.3, ptr noundef %26)
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.data, ptr %1, i32 0, i32 0
  %30 = getelementptr inbounds [100 x i8], ptr %29, i64 0, i64 0
  %31 = getelementptr inbounds %struct.data, ptr %1, i32 0, i32 1
  %32 = getelementptr inbounds [100 x i8], ptr %31, i64 0, i64 0
  %33 = getelementptr inbounds %struct.data, ptr %1, i32 0, i32 2
  %34 = getelementptr inbounds [20 x i8], ptr %33, i64 0, i64 0
  %35 = getelementptr inbounds %struct.data, ptr %1, i32 0, i32 3
  %36 = getelementptr inbounds [20 x i8], ptr %35, i64 0, i64 0
  %37 = getelementptr inbounds %struct.data, ptr %1, i32 0, i32 4
  %38 = getelementptr inbounds [20 x i8], ptr %37, i64 0, i64 0
  %39 = getelementptr inbounds %struct.data, ptr %1, i32 0, i32 5
  %40 = getelementptr inbounds [40 x i8], ptr %39, i64 0, i64 0
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.9, ptr noundef %30, ptr noundef %32, ptr noundef %34, ptr noundef %36, ptr noundef %38, ptr noundef %40)
  %42 = load ptr, ptr %2, align 8
  %43 = call i32 @fclose(ptr noundef %42)
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  ret void
}

declare ptr @fopen(ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @__isoc99_scanf(ptr noundef, ...) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @utl(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %40, %1
  %5 = load ptr, ptr %2, align 8
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  %9 = load i8, ptr %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %4
  %12 = load ptr, ptr %2, align 8
  %13 = load i32, ptr %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sge i32 %17, 65
  br i1 %18, label %19, label %40

19:                                               ; preds = %11
  %20 = load ptr, ptr %2, align 8
  %21 = load i32, ptr %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  %24 = load i8, ptr %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sle i32 %25, 90
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load ptr, ptr %2, align 8
  %29 = load i32, ptr %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = load i8, ptr %31, align 1
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %33, 32
  %35 = trunc i32 %34 to i8
  %36 = load ptr, ptr %2, align 8
  %37 = load i32, ptr %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %36, i64 %38
  store i8 %35, ptr %39, align 1
  br label %40

40:                                               ; preds = %27, %19, %11
  %41 = load i32, ptr %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %3, align 4
  br label %4, !llvm.loop !6

43:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.data.0, align 1
  %7 = alloca %struct.data.0, align 1
  %8 = alloca [20 x i8], align 16
  %9 = alloca [20 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca [20 x i8], align 16
  %12 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  %13 = call ptr @fopen(ptr noundef @.str, ptr noundef @.str.11)
  store ptr %13, ptr %1, align 8
  %14 = load ptr, ptr %1, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  br label %337

18:                                               ; preds = %0
  br label %19

19:                                               ; preds = %36, %18
  %20 = load ptr, ptr %1, align 8
  %21 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 0
  %22 = getelementptr inbounds [100 x i8], ptr %21, i64 0, i64 0
  %23 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 1
  %24 = getelementptr inbounds [100 x i8], ptr %23, i64 0, i64 0
  %25 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 2
  %26 = getelementptr inbounds [20 x i8], ptr %25, i64 0, i64 0
  %27 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 3
  %28 = getelementptr inbounds [20 x i8], ptr %27, i64 0, i64 0
  %29 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 4
  %30 = getelementptr inbounds [20 x i8], ptr %29, i64 0, i64 0
  %31 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 5
  %32 = getelementptr inbounds [40 x i8], ptr %31, i64 0, i64 0
  %33 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %20, ptr noundef @.str.13, ptr noundef %22, ptr noundef %24, ptr noundef %26, ptr noundef %28, ptr noundef %30, ptr noundef %32)
  %34 = load i32, ptr %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %4, align 4
  br label %36

36:                                               ; preds = %19
  %37 = load ptr, ptr %1, align 8
  %38 = call i32 @feof(ptr noundef %37) #7
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %19, label %41, !llvm.loop !8

41:                                               ; preds = %36
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.15)
  %44 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.16, ptr noundef %3)
  br label %45

45:                                               ; preds = %41, %58
  %46 = load i32, ptr %3, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, ptr %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, ptr %3, align 4
  %53 = icmp ne i32 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %56 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.16, ptr noundef %3)
  br label %58

57:                                               ; preds = %51, %48, %45
  br label %59

58:                                               ; preds = %54
  br label %45

59:                                               ; preds = %57
  %60 = load ptr, ptr %1, align 8
  %61 = call i32 @fseek(ptr noundef %60, i64 noundef 0, i32 noundef 0)
  %62 = load i32, ptr %3, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %215

64:                                               ; preds = %59
  store i32 0, ptr %10, align 4
  br label %65

65:                                               ; preds = %64, %151
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.18)
  %67 = getelementptr inbounds [20 x i8], ptr %8, i64 0, i64 0
  %68 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.3, ptr noundef %67)
  %69 = getelementptr inbounds [20 x i8], ptr %8, i64 0, i64 0
  call void @utl(ptr noundef %69)
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %71 = getelementptr inbounds [20 x i8], ptr %9, i64 0, i64 0
  %72 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.3, ptr noundef %71)
  %73 = getelementptr inbounds [20 x i8], ptr %9, i64 0, i64 0
  call void @utl(ptr noundef %73)
  store i32 0, ptr %10, align 4
  %74 = load ptr, ptr %1, align 8
  %75 = call i32 @fseek(ptr noundef %74, i64 noundef 0, i32 noundef 0)
  br label %76

76:                                               ; preds = %128, %65
  %77 = load i32, ptr %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %10, align 4
  %79 = load i32, ptr %10, align 4
  %80 = load i32, ptr %4, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %130

83:                                               ; preds = %76
  %84 = load ptr, ptr %1, align 8
  %85 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 0
  %86 = getelementptr inbounds [100 x i8], ptr %85, i64 0, i64 0
  %87 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 1
  %88 = getelementptr inbounds [100 x i8], ptr %87, i64 0, i64 0
  %89 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 2
  %90 = getelementptr inbounds [20 x i8], ptr %89, i64 0, i64 0
  %91 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 3
  %92 = getelementptr inbounds [20 x i8], ptr %91, i64 0, i64 0
  %93 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 4
  %94 = getelementptr inbounds [20 x i8], ptr %93, i64 0, i64 0
  %95 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 5
  %96 = getelementptr inbounds [40 x i8], ptr %95, i64 0, i64 0
  %97 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %84, ptr noundef @.str.13, ptr noundef %86, ptr noundef %88, ptr noundef %90, ptr noundef %92, ptr noundef %94, ptr noundef %96)
  %98 = getelementptr inbounds %struct.data.0, ptr %7, i32 0, i32 0
  %99 = getelementptr inbounds [100 x i8], ptr %98, i64 0, i64 0
  %100 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 0
  %101 = getelementptr inbounds [100 x i8], ptr %100, i64 0, i64 0
  %102 = call ptr @strcpy(ptr noundef %99, ptr noundef %101) #7
  %103 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 0
  %104 = getelementptr inbounds [100 x i8], ptr %103, i64 0, i64 0
  call void @utl(ptr noundef %104)
  %105 = getelementptr inbounds %struct.data.0, ptr %7, i32 0, i32 0
  %106 = getelementptr inbounds [100 x i8], ptr %105, i64 0, i64 0
  call void @utl(ptr noundef %106)
  %107 = getelementptr inbounds %struct.data.0, ptr %7, i32 0, i32 1
  %108 = getelementptr inbounds [100 x i8], ptr %107, i64 0, i64 0
  %109 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 1
  %110 = getelementptr inbounds [100 x i8], ptr %109, i64 0, i64 0
  %111 = call ptr @strcpy(ptr noundef %108, ptr noundef %110) #7
  %112 = getelementptr inbounds %struct.data.0, ptr %7, i32 0, i32 1
  %113 = getelementptr inbounds [100 x i8], ptr %112, i64 0, i64 0
  call void @utl(ptr noundef %113)
  %114 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 1
  %115 = getelementptr inbounds [100 x i8], ptr %114, i64 0, i64 0
  call void @utl(ptr noundef %115)
  br label %116

116:                                              ; preds = %83
  %117 = getelementptr inbounds [20 x i8], ptr %8, i64 0, i64 0
  %118 = getelementptr inbounds %struct.data.0, ptr %7, i32 0, i32 0
  %119 = getelementptr inbounds [100 x i8], ptr %118, i64 0, i64 0
  %120 = call i32 @strcmp(ptr noundef %117, ptr noundef %119) #8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds [20 x i8], ptr %9, i64 0, i64 0
  %124 = getelementptr inbounds %struct.data.0, ptr %7, i32 0, i32 1
  %125 = getelementptr inbounds [100 x i8], ptr %124, i64 0, i64 0
  %126 = call i32 @strcmp(ptr noundef %123, ptr noundef %125) #8
  %127 = icmp ne i32 %126, 0
  br label %128

128:                                              ; preds = %122, %116
  %129 = phi i1 [ true, %116 ], [ %127, %122 ]
  br i1 %129, label %76, label %130, !llvm.loop !9

130:                                              ; preds = %128, %82
  %131 = getelementptr inbounds [20 x i8], ptr %8, i64 0, i64 0
  %132 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 0
  %133 = getelementptr inbounds [100 x i8], ptr %132, i64 0, i64 0
  %134 = call i32 @strcmp(ptr noundef %131, ptr noundef %133) #8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %130
  %137 = getelementptr inbounds [20 x i8], ptr %9, i64 0, i64 0
  %138 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 1
  %139 = getelementptr inbounds [100 x i8], ptr %138, i64 0, i64 0
  %140 = call i32 @strcmp(ptr noundef %137, ptr noundef %139) #8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = call i32 (ptr, ...) @printf(ptr noundef @.str.19)
  br label %152

144:                                              ; preds = %136, %130
  %145 = load i32, ptr %10, align 4
  %146 = load i32, ptr %4, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = call i32 (ptr, ...) @printf(ptr noundef @.str.20)
  %150 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  br label %151

151:                                              ; preds = %148, %144
  br label %65

152:                                              ; preds = %142
  %153 = load ptr, ptr %1, align 8
  %154 = call i32 @fseek(ptr noundef %153, i64 noundef 0, i32 noundef 0)
  %155 = call ptr @fopen(ptr noundef @.str.22, ptr noundef @.str.1)
  store ptr %155, ptr %2, align 8
  store i32 0, ptr %5, align 4
  br label %156

156:                                              ; preds = %211, %152
  %157 = load i32, ptr %5, align 4
  %158 = load i32, ptr %4, align 4
  %159 = sub nsw i32 %158, 1
  %160 = icmp slt i32 %157, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load ptr, ptr %1, align 8
  %163 = call i32 @feof(ptr noundef %162) #7
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  br label %166

166:                                              ; preds = %161, %156
  %167 = phi i1 [ false, %156 ], [ %165, %161 ]
  br i1 %167, label %168, label %214

168:                                              ; preds = %166
  %169 = load ptr, ptr %1, align 8
  %170 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 0
  %171 = getelementptr inbounds [100 x i8], ptr %170, i64 0, i64 0
  %172 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 1
  %173 = getelementptr inbounds [100 x i8], ptr %172, i64 0, i64 0
  %174 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 2
  %175 = getelementptr inbounds [20 x i8], ptr %174, i64 0, i64 0
  %176 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 3
  %177 = getelementptr inbounds [20 x i8], ptr %176, i64 0, i64 0
  %178 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 4
  %179 = getelementptr inbounds [20 x i8], ptr %178, i64 0, i64 0
  %180 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 5
  %181 = getelementptr inbounds [40 x i8], ptr %180, i64 0, i64 0
  %182 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %169, ptr noundef @.str.13, ptr noundef %171, ptr noundef %173, ptr noundef %175, ptr noundef %177, ptr noundef %179, ptr noundef %181)
  %183 = getelementptr inbounds %struct.data.0, ptr %7, i32 0, i32 1
  %184 = getelementptr inbounds [100 x i8], ptr %183, i64 0, i64 0
  %185 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 1
  %186 = getelementptr inbounds [100 x i8], ptr %185, i64 0, i64 0
  %187 = call ptr @strcpy(ptr noundef %184, ptr noundef %186) #7
  %188 = getelementptr inbounds %struct.data.0, ptr %7, i32 0, i32 1
  %189 = getelementptr inbounds [100 x i8], ptr %188, i64 0, i64 0
  call void @utl(ptr noundef %189)
  %190 = getelementptr inbounds [20 x i8], ptr %9, i64 0, i64 0
  %191 = getelementptr inbounds %struct.data.0, ptr %7, i32 0, i32 1
  %192 = getelementptr inbounds [100 x i8], ptr %191, i64 0, i64 0
  %193 = call i32 @strcmp(ptr noundef %190, ptr noundef %192) #8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %168
  %196 = load ptr, ptr %2, align 8
  %197 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 0
  %198 = getelementptr inbounds [100 x i8], ptr %197, i64 0, i64 0
  %199 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 1
  %200 = getelementptr inbounds [100 x i8], ptr %199, i64 0, i64 0
  %201 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 2
  %202 = getelementptr inbounds [20 x i8], ptr %201, i64 0, i64 0
  %203 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 3
  %204 = getelementptr inbounds [20 x i8], ptr %203, i64 0, i64 0
  %205 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 4
  %206 = getelementptr inbounds [20 x i8], ptr %205, i64 0, i64 0
  %207 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 5
  %208 = getelementptr inbounds [40 x i8], ptr %207, i64 0, i64 0
  %209 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %196, ptr noundef @.str.9, ptr noundef %198, ptr noundef %200, ptr noundef %202, ptr noundef %204, ptr noundef %206, ptr noundef %208)
  br label %210

210:                                              ; preds = %195, %168
  br label %211

211:                                              ; preds = %210
  %212 = load i32, ptr %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, ptr %5, align 4
  br label %156, !llvm.loop !10

214:                                              ; preds = %166
  br label %215

215:                                              ; preds = %214, %59
  %216 = load ptr, ptr %1, align 8
  %217 = call i32 @fseek(ptr noundef %216, i64 noundef 0, i32 noundef 0)
  %218 = load i32, ptr %3, align 4
  %219 = icmp eq i32 %218, 2
  br i1 %219, label %220, label %326

220:                                              ; preds = %215
  store i32 0, ptr %12, align 4
  br label %221

221:                                              ; preds = %220, %269
  %222 = call i32 (ptr, ...) @printf(ptr noundef @.str.23)
  %223 = getelementptr inbounds [20 x i8], ptr %11, i64 0, i64 0
  %224 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.3, ptr noundef %223)
  store i32 0, ptr %12, align 4
  %225 = load ptr, ptr %1, align 8
  %226 = call i32 @fseek(ptr noundef %225, i64 noundef 0, i32 noundef 0)
  br label %227

227:                                              ; preds = %249, %221
  %228 = load i32, ptr %12, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, ptr %12, align 4
  %230 = load i32, ptr %12, align 4
  %231 = load i32, ptr %4, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %227
  br label %255

234:                                              ; preds = %227
  %235 = load ptr, ptr %1, align 8
  %236 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 0
  %237 = getelementptr inbounds [100 x i8], ptr %236, i64 0, i64 0
  %238 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 1
  %239 = getelementptr inbounds [100 x i8], ptr %238, i64 0, i64 0
  %240 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 2
  %241 = getelementptr inbounds [20 x i8], ptr %240, i64 0, i64 0
  %242 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 3
  %243 = getelementptr inbounds [20 x i8], ptr %242, i64 0, i64 0
  %244 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 4
  %245 = getelementptr inbounds [20 x i8], ptr %244, i64 0, i64 0
  %246 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 5
  %247 = getelementptr inbounds [40 x i8], ptr %246, i64 0, i64 0
  %248 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %235, ptr noundef @.str.13, ptr noundef %237, ptr noundef %239, ptr noundef %241, ptr noundef %243, ptr noundef %245, ptr noundef %247)
  br label %249

249:                                              ; preds = %234
  %250 = getelementptr inbounds [20 x i8], ptr %11, i64 0, i64 0
  %251 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 3
  %252 = getelementptr inbounds [20 x i8], ptr %251, i64 0, i64 0
  %253 = call i32 @strcmp(ptr noundef %250, ptr noundef %252) #8
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %227, label %255, !llvm.loop !11

255:                                              ; preds = %249, %233
  %256 = getelementptr inbounds [20 x i8], ptr %11, i64 0, i64 0
  %257 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 3
  %258 = getelementptr inbounds [20 x i8], ptr %257, i64 0, i64 0
  %259 = call i32 @strcmp(ptr noundef %256, ptr noundef %258) #8
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %255
  %262 = call i32 (ptr, ...) @printf(ptr noundef @.str.24)
  br label %270

263:                                              ; preds = %255
  %264 = load i32, ptr %12, align 4
  %265 = load i32, ptr %4, align 4
  %266 = icmp sgt i32 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  %268 = call i32 (ptr, ...) @printf(ptr noundef @.str.25)
  br label %269

269:                                              ; preds = %267, %263
  br label %221

270:                                              ; preds = %261
  %271 = load ptr, ptr %1, align 8
  %272 = call i32 @fseek(ptr noundef %271, i64 noundef 0, i32 noundef 0)
  %273 = call ptr @fopen(ptr noundef @.str.22, ptr noundef @.str.1)
  store ptr %273, ptr %2, align 8
  store i32 0, ptr %5, align 4
  br label %274

274:                                              ; preds = %322, %270
  %275 = load i32, ptr %5, align 4
  %276 = load i32, ptr %4, align 4
  %277 = sub nsw i32 %276, 1
  %278 = icmp slt i32 %275, %277
  br i1 %278, label %279, label %284

279:                                              ; preds = %274
  %280 = load ptr, ptr %1, align 8
  %281 = call i32 @feof(ptr noundef %280) #7
  %282 = icmp ne i32 %281, 0
  %283 = xor i1 %282, true
  br label %284

284:                                              ; preds = %279, %274
  %285 = phi i1 [ false, %274 ], [ %283, %279 ]
  br i1 %285, label %286, label %325

286:                                              ; preds = %284
  %287 = load ptr, ptr %1, align 8
  %288 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 0
  %289 = getelementptr inbounds [100 x i8], ptr %288, i64 0, i64 0
  %290 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 1
  %291 = getelementptr inbounds [100 x i8], ptr %290, i64 0, i64 0
  %292 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 2
  %293 = getelementptr inbounds [20 x i8], ptr %292, i64 0, i64 0
  %294 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 3
  %295 = getelementptr inbounds [20 x i8], ptr %294, i64 0, i64 0
  %296 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 4
  %297 = getelementptr inbounds [20 x i8], ptr %296, i64 0, i64 0
  %298 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 5
  %299 = getelementptr inbounds [40 x i8], ptr %298, i64 0, i64 0
  %300 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %287, ptr noundef @.str.13, ptr noundef %289, ptr noundef %291, ptr noundef %293, ptr noundef %295, ptr noundef %297, ptr noundef %299)
  %301 = getelementptr inbounds [20 x i8], ptr %11, i64 0, i64 0
  %302 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 3
  %303 = getelementptr inbounds [20 x i8], ptr %302, i64 0, i64 0
  %304 = call i32 @strcmp(ptr noundef %301, ptr noundef %303) #8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %321

306:                                              ; preds = %286
  %307 = load ptr, ptr %2, align 8
  %308 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 0
  %309 = getelementptr inbounds [100 x i8], ptr %308, i64 0, i64 0
  %310 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 1
  %311 = getelementptr inbounds [100 x i8], ptr %310, i64 0, i64 0
  %312 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 2
  %313 = getelementptr inbounds [20 x i8], ptr %312, i64 0, i64 0
  %314 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 3
  %315 = getelementptr inbounds [20 x i8], ptr %314, i64 0, i64 0
  %316 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 4
  %317 = getelementptr inbounds [20 x i8], ptr %316, i64 0, i64 0
  %318 = getelementptr inbounds %struct.data.0, ptr %6, i32 0, i32 5
  %319 = getelementptr inbounds [40 x i8], ptr %318, i64 0, i64 0
  %320 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %307, ptr noundef @.str.9, ptr noundef %309, ptr noundef %311, ptr noundef %313, ptr noundef %315, ptr noundef %317, ptr noundef %319)
  br label %321

321:                                              ; preds = %306, %286
  br label %322

322:                                              ; preds = %321
  %323 = load i32, ptr %5, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, ptr %5, align 4
  br label %274, !llvm.loop !12

325:                                              ; preds = %284
  br label %326

326:                                              ; preds = %325, %215
  %327 = load i32, ptr %3, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  br label %337

330:                                              ; preds = %326
  %331 = load ptr, ptr %1, align 8
  %332 = call i32 @fclose(ptr noundef %331)
  %333 = load ptr, ptr %2, align 8
  %334 = call i32 @fclose(ptr noundef %333)
  %335 = call i32 @remove(ptr noundef @.str) #7
  %336 = call i32 @rename(ptr noundef @.str.22, ptr noundef @.str) #7
  br label %337

337:                                              ; preds = %330, %329, %16
  ret void
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare i32 @feof(ptr noundef) #2

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @remove(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @rename(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @upper_con(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load ptr, ptr %2, align 8
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %6, i64 %8
  store ptr %9, ptr %4, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = load ptr, ptr %4, align 8
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %11, %5
  %17 = phi i1 [ false, %5 ], [ %15, %11 ]
  br i1 %17, label %18, label %38

18:                                               ; preds = %16
  %19 = load ptr, ptr %4, align 8
  %20 = load i8, ptr %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sge i32 %21, 97
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8
  %25 = load i8, ptr %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sle i32 %26, 122
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load ptr, ptr %4, align 8
  %30 = load i8, ptr %29, align 1
  %31 = sext i8 %30 to i32
  %32 = sub nsw i32 %31, 32
  %33 = trunc i32 %32 to i8
  store i8 %33, ptr %29, align 1
  br label %34

34:                                               ; preds = %28, %23, %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, ptr %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %3, align 4
  br label %5, !llvm.loop !13

38:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search() #0 {
  %1 = alloca i8, align 1
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.26)
  %11 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  %12 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.3, ptr noundef %11)
  %13 = call ptr @fopen(ptr noundef @.str, ptr noundef @.str.11)
  store ptr %13, ptr %5, align 8
  br label %14

14:                                               ; preds = %31, %0
  br label %15

15:                                               ; preds = %27, %14
  %16 = load ptr, ptr %5, align 8
  %17 = call i32 @fgetc(ptr noundef %16)
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %1, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 10
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i8, ptr %1, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, -1
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi i1 [ false, %15 ], [ %24, %21 ]
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  br label %15, !llvm.loop !14

28:                                               ; preds = %25
  %29 = load i32, ptr %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %3, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load i8, ptr %1, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %14, label %35, !llvm.loop !15

35:                                               ; preds = %31
  %36 = load ptr, ptr %5, align 8
  %37 = call i32 @fclose(ptr noundef %36)
  %38 = load i32, ptr %3, align 4
  %39 = zext i32 %38 to i64
  %40 = call ptr @llvm.stacksave()
  store ptr %40, ptr %6, align 8
  %41 = alloca %struct.Item, i64 %39, align 16
  store i64 %39, ptr %7, align 8
  %42 = call ptr @fopen(ptr noundef @.str, ptr noundef @.str.11)
  store ptr %42, ptr %5, align 8
  store i32 0, ptr %8, align 4
  br label %43

43:                                               ; preds = %80, %35
  %44 = load i32, ptr %8, align 4
  %45 = load i32, ptr %3, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %43
  %48 = load ptr, ptr %5, align 8
  %49 = load i32, ptr %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.Item, ptr %41, i64 %50
  %52 = getelementptr inbounds %struct.Item, ptr %51, i32 0, i32 0
  %53 = getelementptr inbounds [100 x i8], ptr %52, i64 0, i64 0
  %54 = load i32, ptr %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.Item, ptr %41, i64 %55
  %57 = getelementptr inbounds %struct.Item, ptr %56, i32 0, i32 1
  %58 = getelementptr inbounds [100 x i8], ptr %57, i64 0, i64 0
  %59 = load i32, ptr %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.Item, ptr %41, i64 %60
  %62 = getelementptr inbounds %struct.Item, ptr %61, i32 0, i32 2
  %63 = getelementptr inbounds [20 x i8], ptr %62, i64 0, i64 0
  %64 = load i32, ptr %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.Item, ptr %41, i64 %65
  %67 = getelementptr inbounds %struct.Item, ptr %66, i32 0, i32 3
  %68 = getelementptr inbounds [20 x i8], ptr %67, i64 0, i64 0
  %69 = load i32, ptr %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.Item, ptr %41, i64 %70
  %72 = getelementptr inbounds %struct.Item, ptr %71, i32 0, i32 4
  %73 = getelementptr inbounds [20 x i8], ptr %72, i64 0, i64 0
  %74 = load i32, ptr %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.Item, ptr %41, i64 %75
  %77 = getelementptr inbounds %struct.Item, ptr %76, i32 0, i32 5
  %78 = getelementptr inbounds [70 x i8], ptr %77, i64 0, i64 0
  %79 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %48, ptr noundef @.str.27, ptr noundef %53, ptr noundef %58, ptr noundef %63, ptr noundef %68, ptr noundef %73, ptr noundef %78)
  br label %80

80:                                               ; preds = %47
  %81 = load i32, ptr %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %8, align 4
  br label %43, !llvm.loop !16

83:                                               ; preds = %43
  store i32 0, ptr %9, align 4
  br label %84

84:                                               ; preds = %136, %83
  %85 = load i32, ptr %9, align 4
  %86 = load i32, ptr %3, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %139

88:                                               ; preds = %84
  %89 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  call void @upper_con(ptr noundef %89)
  %90 = load i32, ptr %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.Item, ptr %41, i64 %91
  %93 = getelementptr inbounds %struct.Item, ptr %92, i32 0, i32 0
  %94 = getelementptr inbounds [100 x i8], ptr %93, i64 0, i64 0
  call void @upper_con(ptr noundef %94)
  %95 = load i32, ptr %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.Item, ptr %41, i64 %96
  %98 = getelementptr inbounds %struct.Item, ptr %97, i32 0, i32 0
  %99 = getelementptr inbounds [100 x i8], ptr %98, i64 0, i64 0
  %100 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  %101 = call i32 @strcmp(ptr noundef %99, ptr noundef %100) #8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %88
  store i32 10, ptr %4, align 4
  %104 = load i32, ptr %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.Item, ptr %41, i64 %105
  %107 = getelementptr inbounds %struct.Item, ptr %106, i32 0, i32 0
  %108 = getelementptr inbounds [100 x i8], ptr %107, i64 0, i64 0
  %109 = load i32, ptr %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.Item, ptr %41, i64 %110
  %112 = getelementptr inbounds %struct.Item, ptr %111, i32 0, i32 1
  %113 = getelementptr inbounds [100 x i8], ptr %112, i64 0, i64 0
  %114 = load i32, ptr %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.Item, ptr %41, i64 %115
  %117 = getelementptr inbounds %struct.Item, ptr %116, i32 0, i32 2
  %118 = getelementptr inbounds [20 x i8], ptr %117, i64 0, i64 0
  %119 = load i32, ptr %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.Item, ptr %41, i64 %120
  %122 = getelementptr inbounds %struct.Item, ptr %121, i32 0, i32 3
  %123 = getelementptr inbounds [20 x i8], ptr %122, i64 0, i64 0
  %124 = load i32, ptr %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.Item, ptr %41, i64 %125
  %127 = getelementptr inbounds %struct.Item, ptr %126, i32 0, i32 4
  %128 = getelementptr inbounds [20 x i8], ptr %127, i64 0, i64 0
  %129 = load i32, ptr %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.Item, ptr %41, i64 %130
  %132 = getelementptr inbounds %struct.Item, ptr %131, i32 0, i32 5
  %133 = getelementptr inbounds [70 x i8], ptr %132, i64 0, i64 0
  %134 = call i32 (ptr, ...) @printf(ptr noundef @.str.28, ptr noundef %108, ptr noundef %113, ptr noundef %118, ptr noundef %123, ptr noundef %128, ptr noundef %133)
  br label %135

135:                                              ; preds = %103, %88
  br label %136

136:                                              ; preds = %135
  %137 = load i32, ptr %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr %9, align 4
  br label %84, !llvm.loop !17

139:                                              ; preds = %84
  %140 = load i32, ptr %4, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = call i32 (ptr, ...) @printf(ptr noundef @.str.29)
  br label %144

144:                                              ; preds = %142, %139
  %145 = load ptr, ptr %5, align 8
  %146 = call i32 @fclose(ptr noundef %145)
  %147 = load ptr, ptr %6, align 8
  call void @llvm.stackrestore(ptr %147)
  ret void
}

declare i32 @fgetc(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quantity() #0 {
  %1 = alloca [100 x %struct.inventory], align 16
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = call ptr @fopen(ptr noundef @.str, ptr noundef @.str.11)
  store ptr %9, ptr %2, align 8
  store i32 0, ptr %3, align 4
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %16, %0
  %11 = load ptr, ptr %2, align 8
  %12 = call i32 @fgetc(ptr noundef %11)
  %13 = trunc i32 %12 to i8
  store i8 %13, ptr %6, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %55

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 8
  %18 = call i32 @fseek(ptr noundef %17, i64 noundef -1, i32 noundef 1)
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [100 x %struct.inventory], ptr %1, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.inventory, ptr %22, i32 0, i32 0
  %24 = getelementptr inbounds [25 x i8], ptr %23, i64 0, i64 0
  %25 = load i32, ptr %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [100 x %struct.inventory], ptr %1, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.inventory, ptr %27, i32 0, i32 1
  %29 = getelementptr inbounds [25 x i8], ptr %28, i64 0, i64 0
  %30 = load i32, ptr %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [100 x %struct.inventory], ptr %1, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.inventory, ptr %32, i32 0, i32 2
  %34 = getelementptr inbounds [10 x i8], ptr %33, i64 0, i64 0
  %35 = load i32, ptr %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [100 x %struct.inventory], ptr %1, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.inventory, ptr %37, i32 0, i32 3
  %39 = getelementptr inbounds [10 x i8], ptr %38, i64 0, i64 0
  %40 = load i32, ptr %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [100 x %struct.inventory], ptr %1, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.inventory, ptr %42, i32 0, i32 4
  %44 = load i32, ptr %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [100 x %struct.inventory], ptr %1, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.inventory, ptr %46, i32 0, i32 5
  %48 = getelementptr inbounds [20 x i8], ptr %47, i64 0, i64 0
  %49 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %19, ptr noundef @.str.30, ptr noundef %24, ptr noundef %29, ptr noundef %34, ptr noundef %39, ptr noundef %43, ptr noundef %48)
  %50 = load ptr, ptr %7, align 8
  %51 = load ptr, ptr %2, align 8
  %52 = call ptr @fgets(ptr noundef %50, i32 noundef 0, ptr noundef %51)
  %53 = load i32, ptr %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %3, align 4
  br label %10, !llvm.loop !18

55:                                               ; preds = %10
  br label %56

56:                                               ; preds = %55, %105
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.31)
  %58 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.16, ptr noundef %8)
  %59 = load i32, ptr %8, align 4
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str.32, i32 noundef %59)
  store i32 0, ptr %4, align 4
  br label %61

61:                                               ; preds = %95, %56
  %62 = load i32, ptr %4, align 4
  %63 = load i32, ptr %3, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %61
  %67 = load i32, ptr %8, align 4
  %68 = load i32, ptr %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [100 x %struct.inventory], ptr %1, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.inventory, ptr %70, i32 0, i32 4
  %72 = load i32, ptr %71, align 8
  %73 = icmp sgt i32 %67, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %66
  %75 = load i32, ptr %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %5, align 4
  %77 = load i32, ptr %5, align 4
  %78 = load i32, ptr %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [100 x %struct.inventory], ptr %1, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.inventory, ptr %80, i32 0, i32 0
  %82 = getelementptr inbounds [25 x i8], ptr %81, i64 0, i64 0
  %83 = load i32, ptr %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [100 x %struct.inventory], ptr %1, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.inventory, ptr %85, i32 0, i32 1
  %87 = getelementptr inbounds [25 x i8], ptr %86, i64 0, i64 0
  %88 = load i32, ptr %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [100 x %struct.inventory], ptr %1, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.inventory, ptr %90, i32 0, i32 4
  %92 = load i32, ptr %91, align 8
  %93 = call i32 (ptr, ...) @printf(ptr noundef @.str.33, i32 noundef %77, ptr noundef %82, ptr noundef %87, i32 noundef %92)
  br label %94

94:                                               ; preds = %74, %66
  br label %95

95:                                               ; preds = %94
  %96 = load i32, ptr %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %4, align 4
  br label %61, !llvm.loop !19

98:                                               ; preds = %61
  %99 = load i32, ptr %5, align 4
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, ptr %8, align 4
  %103 = call i32 (ptr, ...) @printf(ptr noundef @.str.34, i32 noundef %102)
  br label %105

104:                                              ; preds = %98
  br label %106

105:                                              ; preds = %101
  br label %56

106:                                              ; preds = %104
  %107 = load ptr, ptr %2, align 8
  %108 = call i32 @fclose(ptr noundef %107)
  ret void
}

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @printCaminho(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %5 = load ptr, ptr %2, align 8
  store ptr %5, ptr %4, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.caminho, ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  call void @printPilha(ptr noundef %12)
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.caminho, ptr %13, i32 0, i32 1
  %15 = load double, ptr %14, align 8
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.35, double noundef %15)
  %17 = load i32, ptr %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %3, align 4
  br label %19

19:                                               ; preds = %9
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.caminho, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %4, align 8
  br label %6, !llvm.loop !20

23:                                               ; preds = %6
  %24 = load i32, ptr %3, align 4
  ret i32 %24
}

declare void @printPilha(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insere_caminho(ptr noundef %0, ptr noundef %1, double noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store double %2, ptr %6, align 8
  %9 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 24) #9
  store ptr %9, ptr %7, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.36)
  call void @exit(i32 noundef 1) #10
  unreachable

14:                                               ; preds = %3
  %15 = call ptr (...) @inicializa()
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr inbounds %struct.caminho, ptr %16, i32 0, i32 0
  store ptr %15, ptr %17, align 8
  %18 = load ptr, ptr %5, align 8
  store ptr %18, ptr %8, align 8
  br label %19

19:                                               ; preds = %28, %14
  %20 = load ptr, ptr %8, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds %struct.caminho, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %8, align 8
  %26 = getelementptr inbounds %struct.pilha, ptr %25, i32 0, i32 0
  %27 = load i32, ptr %26, align 8
  call void @push(ptr noundef %24, i32 noundef %27)
  br label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds %struct.pilha, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %8, align 8
  br label %19, !llvm.loop !21

32:                                               ; preds = %19
  %33 = load double, ptr %6, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = getelementptr inbounds %struct.caminho, ptr %34, i32 0, i32 1
  store double %33, ptr %35, align 8
  %36 = load ptr, ptr %4, align 8
  %37 = load ptr, ptr %36, align 8
  %38 = load ptr, ptr %7, align 8
  %39 = getelementptr inbounds %struct.caminho, ptr %38, i32 0, i32 2
  store ptr %37, ptr %39, align 8
  %40 = load ptr, ptr %7, align 8
  %41 = load ptr, ptr %4, align 8
  store ptr %40, ptr %41, align 8
  ret void
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

declare ptr @inicializa(...) #1

declare void @push(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_caminhos(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  br label %7

7:                                                ; preds = %16, %1
  %8 = load ptr, ptr %3, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %15, %10
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.caminho, ptr %12, i32 0, i32 0
  %14 = call zeroext i1 @pop(ptr noundef %13)
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %11, !llvm.loop !22

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.caminho, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %4, align 8
  %20 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %20) #7
  %21 = load ptr, ptr %4, align 8
  store ptr %21, ptr %3, align 8
  br label %7, !llvm.loop !23

22:                                               ; preds = %7
  %23 = load ptr, ptr %2, align 8
  store ptr null, ptr %23, align 8
  ret void
}

declare zeroext i1 @pop(ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zera_matriz(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  store i32 0, ptr %6, align 4
  br label %12

12:                                               ; preds = %24, %11
  %13 = load i32, ptr %6, align 4
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8
  %18 = load i32, ptr %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [20 x double], ptr %17, i64 %19
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [20 x double], ptr %20, i64 0, i64 %22
  store double -1.000000e+00, ptr %23, align 8
  br label %24

24:                                               ; preds = %16
  %25 = load i32, ptr %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %6, align 4
  br label %12, !llvm.loop !24

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27
  %29 = load i32, ptr %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %5, align 4
  br label %7, !llvm.loop !25

31:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @melhor_proporcao(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  store i32 0, ptr %6, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load ptr, ptr %3, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load double, ptr %5, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.caminho, ptr %12, i32 0, i32 1
  %14 = load double, ptr %13, align 8
  %15 = fcmp olt double %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.caminho, ptr %17, i32 0, i32 1
  %19 = load double, ptr %18, align 8
  br label %22

20:                                               ; preds = %10
  %21 = load double, ptr %5, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi double [ %19, %16 ], [ %21, %20 ]
  store double %23, ptr %5, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = load i32, ptr %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.caminho, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  store ptr %29, ptr %3, align 8
  br label %7, !llvm.loop !26

30:                                               ; preds = %7
  %31 = load double, ptr %5, align 8
  ret double %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @resultados(ptr noundef %0, double noundef %1, i32 noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store double %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %13 = load ptr, ptr %5, align 8
  %14 = call double @melhor_proporcao(ptr noundef %13, ptr noundef %10)
  store double %14, ptr %11, align 8
  %15 = load double, ptr %11, align 8
  %16 = load double, ptr %6, align 8
  %17 = fcmp oge double %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load i32, ptr %7, align 4
  %20 = load i32, ptr %10, align 4
  %21 = load double, ptr %6, align 8
  %22 = load double, ptr %11, align 8
  %23 = load double, ptr %11, align 8
  %24 = load double, ptr %6, align 8
  %25 = fdiv double %23, %24
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.37, i32 noundef %19, i32 noundef %20, double noundef %21, double noundef %22, double noundef %25)
  %27 = call ptr @fopen(ptr noundef @.str.38, ptr noundef @.str.1)
  store ptr %27, ptr %8, align 8
  %28 = load ptr, ptr %8, align 8
  %29 = icmp ne ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %18
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.39)
  call void @exit(i32 noundef 1) #10
  unreachable

32:                                               ; preds = %18
  %33 = load ptr, ptr %8, align 8
  %34 = load i32, ptr %7, align 4
  %35 = load i32, ptr %10, align 4
  %36 = load double, ptr %6, align 8
  %37 = load double, ptr %11, align 8
  %38 = load double, ptr %11, align 8
  %39 = load double, ptr %6, align 8
  %40 = fdiv double %38, %39
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.37, i32 noundef %34, i32 noundef %35, double noundef %36, double noundef %37, double noundef %40)
  store i32 %41, ptr %9, align 4
  %42 = load i32, ptr %9, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str.40)
  call void @exit(i32 noundef 1) #10
  unreachable

46:                                               ; preds = %32
  %47 = load ptr, ptr %8, align 8
  %48 = call i32 @fclose(ptr noundef %47)
  store i1 true, ptr %4, align 1
  br label %70

49:                                               ; preds = %3
  %50 = load i32, ptr %7, align 4
  %51 = load double, ptr %6, align 8
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str.41, i32 noundef %50, double noundef %51)
  %53 = call ptr @fopen(ptr noundef @.str.38, ptr noundef @.str.1)
  store ptr %53, ptr %8, align 8
  %54 = load ptr, ptr %8, align 8
  %55 = icmp ne ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.39)
  call void @exit(i32 noundef 1) #10
  unreachable

58:                                               ; preds = %49
  %59 = load ptr, ptr %8, align 8
  %60 = load i32, ptr %7, align 4
  %61 = load double, ptr %6, align 8
  %62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.41, i32 noundef %60, double noundef %61)
  store i32 %62, ptr %12, align 4
  %63 = load i32, ptr %12, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.40)
  call void @exit(i32 noundef 1) #10
  unreachable

67:                                               ; preds = %58
  %68 = load ptr, ptr %8, align 8
  %69 = call i32 @fclose(ptr noundef %68)
  store i1 false, ptr %4, align 1
  br label %70

70:                                               ; preds = %67, %46
  %71 = load i1, ptr %4, align 1
  ret i1 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_matriz(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.42)
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %16, %2
  %10 = load i32, ptr %5, align 4
  %11 = load i32, ptr %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i32, ptr %5, align 4
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.43, i32 noundef %14)
  br label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %5, align 4
  br label %9, !llvm.loop !27

19:                                               ; preds = %9
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.44)
  store i32 0, ptr %6, align 4
  br label %21

21:                                               ; preds = %47, %19
  %22 = load i32, ptr %6, align 4
  %23 = load i32, ptr %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = load i32, ptr %6, align 4
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.45, i32 noundef %26)
  store i32 0, ptr %7, align 4
  br label %28

28:                                               ; preds = %42, %25
  %29 = load i32, ptr %7, align 4
  %30 = load i32, ptr %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load ptr, ptr %3, align 8
  %34 = load i32, ptr %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [20 x double], ptr %33, i64 %35
  %37 = load i32, ptr %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [20 x double], ptr %36, i64 0, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.46, double noundef %40)
  br label %42

42:                                               ; preds = %32
  %43 = load i32, ptr %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %7, align 4
  br label %28, !llvm.loop !28

45:                                               ; preds = %28
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.44)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %6, align 4
  br label %21, !llvm.loop !29

50:                                               ; preds = %21
  %51 = call i32 (ptr, ...) @printf(ptr noundef @.str.47)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encontra_ciclos(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  store double 0.000000e+00, ptr %10, align 8
  %12 = call ptr (...) @inicializa()
  store ptr %12, ptr %11, align 8
  store i32 0, ptr %7, align 4
  br label %13

13:                                               ; preds = %140, %3
  %14 = load i32, ptr %7, align 4
  %15 = load i32, ptr %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %143

17:                                               ; preds = %13
  %18 = load i32, ptr %7, align 4
  call void @push(ptr noundef %11, i32 noundef %18)
  %19 = load i32, ptr %7, align 4
  store i32 %19, ptr %9, align 4
  store i32 0, ptr %8, align 4
  store double 0.000000e+00, ptr %10, align 8
  br label %20

20:                                               ; preds = %138, %17
  %21 = load ptr, ptr %11, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %139

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %104, %23
  %25 = load i32, ptr %8, align 4
  %26 = load i32, ptr %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %107

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 8
  %30 = load i32, ptr %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [20 x double], ptr %29, i64 %31
  %33 = load i32, ptr %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [20 x double], ptr %32, i64 0, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = fcmp ogt double %36, -1.000000e+00
  br i1 %37, label %38, label %103

38:                                               ; preds = %28
  %39 = load i32, ptr %8, align 4
  call void @push(ptr noundef %11, i32 noundef %39)
  %40 = load ptr, ptr %11, align 8
  %41 = load i32, ptr %8, align 4
  %42 = call i32 @verifica(ptr noundef %40, i32 noundef %41)
  switch i32 %42, label %98 [
    i32 1, label %43
    i32 -1, label %78
    i32 0, label %86
  ]

43:                                               ; preds = %38
  %44 = load ptr, ptr %4, align 8
  %45 = load i32, ptr %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [20 x double], ptr %44, i64 %46
  %48 = load i32, ptr %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [20 x double], ptr %47, i64 0, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = load double, ptr %10, align 8
  %53 = fadd double %52, %51
  store double %53, ptr %10, align 8
  %54 = load ptr, ptr %6, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = load double, ptr %10, align 8
  call void @insere_caminho(ptr noundef %54, ptr noundef %55, double noundef %56)
  %57 = load ptr, ptr %4, align 8
  %58 = load i32, ptr %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [20 x double], ptr %57, i64 %59
  %61 = load i32, ptr %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [20 x double], ptr %60, i64 0, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = load double, ptr %10, align 8
  %66 = fsub double %65, %64
  store double %66, ptr %10, align 8
  %67 = load ptr, ptr %11, align 8
  %68 = getelementptr inbounds %struct.pilha, ptr %67, i32 0, i32 0
  %69 = load i32, ptr %68, align 8
  store i32 %69, ptr %8, align 4
  %70 = call zeroext i1 @pop(ptr noundef %11)
  %71 = load ptr, ptr %11, align 8
  %72 = icmp ne ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %43
  br label %98

74:                                               ; preds = %43
  %75 = load ptr, ptr %11, align 8
  %76 = getelementptr inbounds %struct.pilha, ptr %75, i32 0, i32 0
  %77 = load i32, ptr %76, align 8
  store i32 %77, ptr %9, align 4
  br label %98

78:                                               ; preds = %38
  %79 = load ptr, ptr %11, align 8
  %80 = getelementptr inbounds %struct.pilha, ptr %79, i32 0, i32 0
  %81 = load i32, ptr %80, align 8
  store i32 %81, ptr %8, align 4
  %82 = call zeroext i1 @pop(ptr noundef %11)
  %83 = load ptr, ptr %11, align 8
  %84 = getelementptr inbounds %struct.pilha, ptr %83, i32 0, i32 0
  %85 = load i32, ptr %84, align 8
  store i32 %85, ptr %9, align 4
  br label %98

86:                                               ; preds = %38
  %87 = load ptr, ptr %4, align 8
  %88 = load i32, ptr %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [20 x double], ptr %87, i64 %89
  %91 = load i32, ptr %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [20 x double], ptr %90, i64 0, i64 %92
  %94 = load double, ptr %93, align 8
  %95 = load double, ptr %10, align 8
  %96 = fadd double %95, %94
  store double %96, ptr %10, align 8
  %97 = load i32, ptr %8, align 4
  store i32 %97, ptr %9, align 4
  store i32 -1, ptr %8, align 4
  br label %98

98:                                               ; preds = %38, %86, %78, %74, %73
  %99 = load ptr, ptr %11, align 8
  %100 = icmp ne ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  br label %107

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %28
  br label %104

104:                                              ; preds = %103
  %105 = load i32, ptr %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %8, align 4
  br label %24, !llvm.loop !30

107:                                              ; preds = %101, %24
  %108 = load ptr, ptr %11, align 8
  %109 = icmp ne ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  br label %139

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %122, %111
  %113 = load i32, ptr %8, align 4
  %114 = load i32, ptr %5, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %112
  %117 = load i32, ptr %9, align 4
  store i32 %117, ptr %8, align 4
  %118 = call zeroext i1 @pop(ptr noundef %11)
  %119 = load ptr, ptr %11, align 8
  %120 = icmp ne ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  br label %138

122:                                              ; preds = %116
  %123 = load ptr, ptr %11, align 8
  %124 = getelementptr inbounds %struct.pilha, ptr %123, i32 0, i32 0
  %125 = load i32, ptr %124, align 8
  store i32 %125, ptr %9, align 4
  %126 = load ptr, ptr %4, align 8
  %127 = load i32, ptr %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [20 x double], ptr %126, i64 %128
  %130 = load i32, ptr %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [20 x double], ptr %129, i64 0, i64 %131
  %133 = load double, ptr %132, align 8
  %134 = load double, ptr %10, align 8
  %135 = fsub double %134, %133
  store double %135, ptr %10, align 8
  %136 = load i32, ptr %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr %8, align 4
  br label %112, !llvm.loop !31

138:                                              ; preds = %121, %112
  br label %20, !llvm.loop !32

139:                                              ; preds = %110, %20
  br label %140

140:                                              ; preds = %139
  %141 = load i32, ptr %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr %7, align 4
  br label %13, !llvm.loop !33

143:                                              ; preds = %13
  ret void
}

declare i32 @verifica(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca [1000 x i8], align 16
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.48)
  br label %9

9:                                                ; preds = %0, %68
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.49)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.50)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.51)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.52)
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.53)
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.54)
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.55)
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.56)
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.57)
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.58)
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.59)
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.60)
  %22 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.16, ptr noundef %2)
  %23 = load i32, ptr %2, align 4
  switch i32 %23, label %66 [
    i32 1, label %24
    i32 2, label %50
    i32 3, label %52
    i32 4, label %54
    i32 5, label %56
    i32 6, label %58
    i32 7, label %60
    i32 8, label %62
    i32 9, label %64
  ]

24:                                               ; preds = %9
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.61)
  %26 = call ptr @fopen(ptr noundef @.str, ptr noundef @.str.11)
  store ptr %26, ptr %3, align 8
  store i32 0, ptr %7, align 4
  br label %27

27:                                               ; preds = %24, %44
  %28 = load ptr, ptr %3, align 8
  %29 = call i32 @_IO_getc(ptr noundef %28)
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %6, align 1
  %31 = load i8, ptr %6, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %45

35:                                               ; preds = %27
  %36 = load i8, ptr %6, align 1
  %37 = load i32, ptr %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %7, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [1000 x i8], ptr %5, i64 0, i64 %39
  store i8 %36, ptr %40, align 1
  %41 = load i32, ptr %7, align 4
  %42 = icmp sge i32 %41, 1000
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %45

44:                                               ; preds = %35
  br label %27

45:                                               ; preds = %43, %34
  %46 = getelementptr inbounds [1000 x i8], ptr %5, i64 0, i64 0
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str.62, ptr noundef %46)
  %48 = load ptr, ptr %3, align 8
  %49 = call i32 @fclose(ptr noundef %48)
  br label %68

50:                                               ; preds = %9
  %51 = call i32 (ptr, ...) @printf(ptr noundef @.str.63)
  call void @search()
  br label %68

52:                                               ; preds = %9
  %53 = call i32 (ptr, ...) @printf(ptr noundef @.str.64)
  br label %68

54:                                               ; preds = %9
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str.65)
  br label %68

56:                                               ; preds = %9
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.66)
  call void @quantity()
  br label %68

58:                                               ; preds = %9
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str.67)
  call void @Add()
  br label %68

60:                                               ; preds = %9
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str.68)
  call void @delete()
  br label %68

62:                                               ; preds = %9
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str.69)
  br label %68

64:                                               ; preds = %9
  %65 = call i32 (ptr, ...) @printf(ptr noundef @.str.70)
  ret i32 0

66:                                               ; preds = %9
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str.71)
  br label %68

68:                                               ; preds = %66, %62, %60, %58, %56, %54, %52, %50, %45
  %69 = call i32 (ptr, ...) @printf(ptr noundef @.str.44)
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str.44)
  br label %9
}

declare i32 @_IO_getc(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 17.0.6 (++20231120125743+f8575ff46f89-1~exp1~20231120125800.70)"}
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
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}

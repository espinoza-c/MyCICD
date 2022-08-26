func @_Calculators.Series.Factorial$int$(i32) -> i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :11 :4) {
^entry (%_n : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :11 :25)
cbde.store %_n, %0 : memref<i32> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :11 :25)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.load %0 : memref<i32> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :13 :12)
%2 = constant 1 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :13 :16)
%3 = cmpi "sgt", %1, %2 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :13 :12)
cond_br %3, ^1, ^2 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :13 :12)

^1: // JumpBlock
%4 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :14 :19) // Not a variable of known type: _calculator
%5 = cbde.load %0 : memref<i32> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :14 :35)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Factorial
%6 = cbde.load %0 : memref<i32> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :14 :48)
%7 = constant 1 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :14 :52)
%8 = subi %6, %7 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :14 :48)
%9 = cbde.unknown : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :14 :38) // Factorial(n - 1) (InvocationExpression)
%10 = cbde.unknown : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :14 :19) // _calculator.Mul(n, Factorial(n - 1)) (InvocationExpression)
return %10 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :14 :12)

^2: // JumpBlock
%11 = cbde.load %0 : memref<i32> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :15 :15)
return %11 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :15 :8)

^3: // ExitBlock
cbde.unreachable

}
func @_Calculators.Series.Fibonacci$int$(i32) -> i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :18 :4) {
^entry (%_n : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :18 :25)
cbde.store %_n, %0 : memref<i32> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :18 :25)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.load %0 : memref<i32> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :20 :12)
%2 = constant 1 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :20 :16)
%3 = cmpi "sgt", %1, %2 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :20 :12)
cond_br %3, ^1, ^2 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :20 :12)

^1: // JumpBlock
%4 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :21 :19) // Not a variable of known type: _calculator
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Fibonacci
%5 = cbde.load %0 : memref<i32> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :21 :45)
%6 = constant 1 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :21 :49)
%7 = subi %5, %6 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :21 :45)
%8 = cbde.unknown : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :21 :35) // Fibonacci(n - 1) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Fibonacci
%9 = cbde.load %0 : memref<i32> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :21 :63)
%10 = constant 2 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :21 :67)
%11 = subi %9, %10 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :21 :63)
%12 = cbde.unknown : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :21 :53) // Fibonacci(n - 2) (InvocationExpression)
%13 = cbde.unknown : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :21 :19) // _calculator.Add(Fibonacci(n - 1), Fibonacci(n - 2)) (InvocationExpression)
return %13 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :21 :12)

^2: // JumpBlock
%14 = cbde.load %0 : memref<i32> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :22 :15)
return %14 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Series.cs" :22 :8)

^3: // ExitBlock
cbde.unreachable

}

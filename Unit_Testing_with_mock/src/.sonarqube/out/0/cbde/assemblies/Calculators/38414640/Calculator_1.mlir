func @_Calculators.Calculator.Add$float.float$(none, none) -> none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :4 :4) {
^entry (%_a : none, %_b : none):
%0 = cbde.alloca none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :4 :21)
cbde.store %_a, %0 : memref<none> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :4 :21)
%1 = cbde.alloca none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :4 :30)
cbde.store %_b, %1 : memref<none> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :4 :30)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :6 :15) // Not a variable of known type: a
%3 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :6 :19) // Not a variable of known type: b
%4 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :6 :15) // Binary expression on unsupported types a + b
return %4 : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :6 :8)

^1: // ExitBlock
cbde.unreachable

}
func @_Calculators.Calculator.Sub$float.float$(none, none) -> none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :9 :4) {
^entry (%_a : none, %_b : none):
%0 = cbde.alloca none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :9 :21)
cbde.store %_a, %0 : memref<none> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :9 :21)
%1 = cbde.alloca none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :9 :30)
cbde.store %_b, %1 : memref<none> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :9 :30)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :11 :15) // Not a variable of known type: a
%3 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :11 :19) // Not a variable of known type: b
%4 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :11 :15) // Binary expression on unsupported types a - b
return %4 : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :11 :8)

^1: // ExitBlock
cbde.unreachable

}
func @_Calculators.Calculator.Mul$float.float$(none, none) -> none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :14 :4) {
^entry (%_a : none, %_b : none):
%0 = cbde.alloca none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :14 :21)
cbde.store %_a, %0 : memref<none> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :14 :21)
%1 = cbde.alloca none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :14 :30)
cbde.store %_b, %1 : memref<none> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :14 :30)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :16 :15) // Not a variable of known type: a
%3 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :16 :19) // Not a variable of known type: b
%4 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :16 :15) // Binary expression on unsupported types a * b
return %4 : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :16 :8)

^1: // ExitBlock
cbde.unreachable

}
func @_Calculators.Calculator.Div$float.float$(none, none) -> none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :19 :4) {
^entry (%_a : none, %_b : none):
%0 = cbde.alloca none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :19 :21)
cbde.store %_a, %0 : memref<none> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :19 :21)
%1 = cbde.alloca none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :19 :30)
cbde.store %_b, %1 : memref<none> loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :19 :30)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :21 :12) // Not a variable of known type: b
%3 = constant 0 : i32 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :21 :17)
%4 = cbde.unknown : i1  loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :21 :12) // comparison of unknown type: b == 0
cond_br %4, ^1, ^2 loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :21 :12)

^1: // JumpBlock
%5 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :21 :26) // new DivideByZeroException() (ObjectCreationExpression)
cbde.throw %5 :  none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :21 :20)

^2: // JumpBlock
%6 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :22 :15) // Not a variable of known type: a
%7 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :22 :19) // Not a variable of known type: b
%8 = cbde.unknown : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :22 :15) // Binary expression on unsupported types a / b
return %8 : none loc("C:\\Users\\a875026\\source\\repos\\Practica Unit Test c# 1\\src\\Calculator.cs" :22 :8)

^3: // ExitBlock
cbde.unreachable

}

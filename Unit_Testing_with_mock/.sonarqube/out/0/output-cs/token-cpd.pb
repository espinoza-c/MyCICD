?
GC:\Users\a875026\source\repos\Practica Unit Test c# 1\src\Calculator.cs
	namespace 	
Calculators
 
; 
public 
class 

Calculator 
{ 
public 

float 
Add 
( 
float 
a 
, 
float #
b$ %
)% &
{ 
return 
a 
+ 
b 
; 
} 
public

 

float

 
Sub

 
(

 
float

 
a

 
,

 
float

 #
b

$ %
)

% &
{ 
return 
a 
- 
b 
; 
} 
public 

float 
Mul 
( 
float 
a 
, 
float #
b$ %
)% &
{ 
return 
a 
* 
b 
; 
} 
public 

float 
Div 
( 
float 
a 
, 
float #
b$ %
)% &
{ 
if 

( 
b 
== 
$num 
) 
throw 
new !
DivideByZeroException 3
(3 4
)4 5
;5 6
return 
a 
/ 
b 
; 
} 
} ?
HC:\Users\a875026\source\repos\Practica Unit Test c# 1\src\ICalculator.cs
	namespace 	
Calculators
 
; 
public 
	interface 
ICalculator 
{ 
public 

int 
Add 
( 
int 
a 
, 
int 
b 
)  
;  !
public 

int 
Sub 
( 
int 
a 
, 
int 
b 
)  
;  !
public		 

int		 
Mul		 
(		 
int		 
a		 
,		 
int		 
b		 
)		  
;		  !
public 

float 
Div 
( 
int 
a 
, 
int 
b  !
)! "
;" #
} ?
DC:\Users\a875026\source\repos\Practica Unit Test c# 1\src\Program.cs
Console 
. 
	WriteLine 
( 
$str !
)! "
;" #?
CC:\Users\a875026\source\repos\Practica Unit Test c# 1\src\Series.cs
	namespace 	
Calculators
 
; 
public 
class 
Series 
{ 
private 
readonly 
ICalculator  
_calculator! ,
;, -
public 

Series 
( 
ICalculator 

calculator (
)( )
{ 
_calculator		 
=		 

calculator		  
;		  !
}

 
public 

int 
	Factorial 
( 
int 
n 
) 
{ 
if 

( 
n 
> 
$num 
) 
return 
_calculator 
. 
Mul "
(" #
n# $
,$ %
	Factorial& /
(/ 0
n0 1
-2 3
$num4 5
)5 6
)6 7
;7 8
return 
n 
; 
} 
public 

int 
	Fibonacci 
( 
int 
n 
) 
{ 
if 

( 
n 
> 
$num 
) 
return 
_calculator 
. 
Add "
(" #
	Fibonacci# ,
(, -
n- .
-/ 0
$num1 2
)2 3
,3 4
	Fibonacci5 >
(> ?
n? @
-A B
$numC D
)D E
)E F
;F G
return 
n 
; 
} 
} 
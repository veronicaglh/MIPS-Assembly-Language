#This file will add two doubles. 
.data 
doubleNum1: .double 3.421
doubleNum2: .double 4.321
message: .asciiz "The sum of the two doubles is: "

.text 
ldc1 $f0, doubleNum1
ldc1 $f2, doubleNum2
add.d $f4,$f2,$f0 

li $v0, 4
la $a0, message #ldc1 $f12, message
syscall 

li $v0, 3
mov.d $f12,$f4
syscall


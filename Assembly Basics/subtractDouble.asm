# This file will subtract two doubles. 
# Declaring and intializing variables
.data 
doubleNum1: .double 4.4343
doubleNum2: .double 3.3232
message: .asciiz "The subtraction of the two doubles is: "

# Compute the difference of the two numbers
.text 
ldc1 $f0, doubleNum1
ldc1 $f2, doubleNum2
sub.d $f4,$f0,$f2

li $v0, 4
la $a0, message
syscall 

li $v0, 3
mov.d $f12,$f4
syscall

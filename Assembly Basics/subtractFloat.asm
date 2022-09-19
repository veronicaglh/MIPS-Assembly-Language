# This file will subtract two floats 
# Declaring and intializing variables
.data 
floatNum1: .float 4.434
floatNum2: .float 2.432
message: .asciiz "The subtraction of the two float is: "

# Computing the difference of the two floats
.text 
lwc1 $f1, floatNum1
lwc1 $f2, floatNum2
sub.s $f3,$f2,$f1

li $v0, 4
la $a0, message
syscall 

li $v0, 2
mov.s $f12, $f3
syscall 

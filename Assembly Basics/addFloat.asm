#This file will be used to add two floats 
# Declaring and intializing variables
.data 
floatNum1: .float 3.12
floatNum2: .float 3.14 
message: .asciiz "The sum of the two float numbers is: "

# Computing the sum of the two floats
.text 
lwc1 $f1, floatNum1
lwc1 $f2, floatNum2
add.s $f3,$f2,$f1

li $v0, 4
la $a0, message
syscall 

li $v0, 2
mov.s $f12, $f3
syscall 

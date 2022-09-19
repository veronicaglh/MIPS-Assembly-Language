# This file will subtract two integers 
# Declaring and intializing variables
.data 
num1: .word 16
num2: .word 10
message: .asciiz "The subtraction of the two integers is: "

# Computing the difference of the two integers 
.text 
lw $t1, num1
lw $t2, num2 
sub $t3,$t1,$t2

li $v0, 4
la $a0, message
syscall 

li $v0,1 
move $a0, $t3
syscall 

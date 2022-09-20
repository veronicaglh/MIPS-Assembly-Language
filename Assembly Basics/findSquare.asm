# This program will calculate the square of a number 
# The user can the value of the number that is going to be squared by changing the value of num1
# which is declared and intialized below 
.data
message : .asciiz "The square of the number is: "
num1: .word 3

.text
lw $t0, num1
mult $t0, $t0
mflo $t1  #mflo - stands for move from low

li $v0, 4
la $a0,message
syscall   #this is used to print the message before the number

li $v0,1 
move $a0, $t1
syscall 

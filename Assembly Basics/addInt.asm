.data 
message: .asciiz "The sum of the numbers is: "
num1: .word 5
num2: .word 10 
.text 
lw $t1, num1
lw $t2, num2 
add $t3,$t1,$t2

li $v0, 4
la $a0, message
syscall 

li $v0,1 
move $a0, $t3
syscall 
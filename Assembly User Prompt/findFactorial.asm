# This document will find factorial of a number 
# Declaring the variables
.data 
prompt1: .asciiz "Enter the number: "
prompt2: .asciiz "The factorial of the number is: "

# Computing the factorial of the 
.text
#To print prompt1
li $v0, 4           
la $a0, prompt1	    
syscall

#To store the value that is inputed by the user 
li $v0, 5
syscall  
move $t1,$v0    #moves the inputed number to t1

li $t2, 1   #Store the number 1 on t2

sub $t3,$t1,$t2   #Stores t1-t2 on t3 
mul $t4,$t3,$t1  #Stores t3 * t1 on t4 
sub $t3,$t3,$t2
mul $t4,$t4,$t3
sub $t3,$t3,$t2
mul $t4,$t4,$t3
sub $t3,$t3,$t2
mul $t4,$t4,$t3

#To print prompt2 
li $v0, 4           
la $a0, prompt2 	    
syscall

#To print the final answer(the factorial of the number)
li $v0, 1
move $a0,$t4
syscall


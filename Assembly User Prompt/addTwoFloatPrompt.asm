# This program will add two floating numbers that it recieves from the user.
# Declare variables
.data 
prompt1: .asciiz "Enter the first floating number: "
prompt2: .asciiz "Enter the second floating number: "
prompt3: .asciiz "The sum of the two floating points is: "

# Compute the sum of the two floats
.text 
#To print prompt1
li $v0, 4            #announces a string is going to be printed
la $a0, prompt1	     #tells which string is going to be printed(prompt1) and prints it
syscall 

#To store the value that is inputed by the user 
li $v0, 6
syscall  
mov.s $f1, $f0    #moves the inputed floating number to f1


#To print prompt2 
li $v0, 4
la $a0, prompt2
syscall

#To store the second floating number inputed by the user 
li $v0, 6
syscall

mov.s $f2, $f0     #moves the second floating number to f2
add.s  $f3,$f1,$f2


#To print the final prompt3 message
li $v0, 4
la $a0, prompt3
syscall

#To print the final result (the sum of the two floats) or the floating number
li $v0, 2
mov.s $f12,$f3
syscall

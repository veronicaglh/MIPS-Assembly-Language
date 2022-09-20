# This program will add two different integers that it recieves from the user. 
# Declaring the variables 
.data 
prompt1: .asciiz "Enter the first number: "
prompt2: .asciiz "Enter the second number: "
prompt3: .asciiz "The sum of the two numbers is: "

# Computing the sum of the numbers 
.text
#To print the first string asking user to input one number
li $v0,4           #tells is about to print string 
la $a0,prompt1     #prints the prompt1 message
syscall 

#To read and store the value of the inputed integer in v0
li $v0, 5          #The value read from the keyboard(like the number inputed by the user) is stored in v0. 
syscall            #The number 5 represents read integer(the number read from the keyboard)

move $t1, $v0	   #Then the value in v0(the integer from the user) is moved to t1

#To print the second string asking the user to input a second number 
li $v0,4           # tells is about to print string 
la $a0,prompt2     #tells which string to print(prints the prompt2 message)
syscall 

#To read and store the value of the second inputed string in v0
li $v0, 5          #Reads the second number the user has inputed and stores it in v0 
syscall 

move $t2, $v0	   #Moves the second integer from v0 to t2	   	   	   
add $t3,$t1,$t2    #adds t1 and t2 and stores it in t3

#To print the propmpt3 message "The sum of the two numbers is: "
li $v0, 4
la $a0,prompt3
syscall

#To print the final result(that is the sunm of the two numbers)
li $v0, 1
move $a0, $t3
syscall

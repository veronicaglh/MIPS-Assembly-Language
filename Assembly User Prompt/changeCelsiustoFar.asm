#This document will change °C to °F assuming the tempertaure in °C is given as float number.

#Decalring the variables 
.data 
prompt1: .asciiz "Enter the temprature in Celsius: "
prompt2: .asciiz "The temperature in Fahrenheit is: "
num1: .float 1.8  #The value of 9/5 = 1.8
num2: .float 32.0

#Computation(changing the recieved  temperature from celsius to fahrenheit) 
.text 
lwc1 $f2, num1		#To load the value of 9/5 to f2
lwc1 $f30, num2         #To load the value 32.0 to f30
#To print prompt1 
li $v0, 4            
la $a0, prompt1	  
syscall 

#To read and store the value inputed from the user 
li $v0, 6
syscall 
mov.s $f1, $f0    #moves the inputed floating celsius temp number to f1

mul.s $f3, $f1, $f2 #stores the product of f1 and f2 on f3 
add.s $f4,$f3,$f30    #adds f3 and f30 and stores it on f4

#To print prompt2 
li $v0, 4
la $a0, prompt2
syscall

#To print final result(the temperature in Fahrenheit)
li $v0, 2
mov.s $f12,$f4
syscall




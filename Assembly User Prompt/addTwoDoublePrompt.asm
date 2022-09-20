# This program will contain the basics of the MIPS-I Assembly Language. 
# which refers to the assembly language of the MIPS processor. The term MIPS is an acronym for Microprocessor
# Inorder for this program to work you will need to download MARS(Mips Assembly and Runtime Simulator) which acts as an IDE 
# and lets you assemble and execute the MIPS assembly language programs. 
# You can download MARS from this link http://courses.missouristate.edu/KenVollmar/mars/
# And you can download the jdk from this link https://www.oracle.com/technetwork/java/javase/downloads/index.html
# Inorder to run the program you must first assemble it then run. 

# This file has two folders
# The first folder will contain programs that add and subtract double, float and intergers. 
# However the values of these numbers will be not be received from the user but is already determined. 
# If the user wants to change the values of these numbers they can do so by editing the code 
# The second folder will be able to receive value from the user and execute the program based of that. 

#This program will add two double numbers that it recieves from the user.
.data 
prompt1: .asciiz "Enter the first double number: "
prompt2: .asciiz "Enter the second double number: "
prompt3: .asciiz "The sum of the two double points is: "

.text 
#To print prompt1 
li $v0, 4            
la $a0, prompt1	  
syscall 

#To read and store the value inputed from the user 
li $v0, 7
syscall 
mov.d $f2,$f0

#To print prompt2 
li $v0, 4
la $a0, prompt2 
syscall 

#To read and store the second double inputed from the user 
li $v0, 7
syscall 
mov.d $f4,$f0
add.d $f6,$f2,$f4     #adds the values on f2(the first double inputed by user) and f4(the second double) and stores on f6

 #To print the final prompt3 message
li $v0, 4
la $a0, prompt3
syscall

#To print the final result (the sum of the two doubles) or the final double number
li $v0, 2
mov.d $f12,$f6
syscall 


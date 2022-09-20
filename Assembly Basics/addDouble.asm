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


#This file will add two doubles. 
# Declare and intialize variables
.data 
doubleNum1: .double 3.421
doubleNum2: .double 4.321
message: .asciiz "The sum of the two doubles is: "

# Compute the sum of the two numbers
.text 
ldc1 $f0, doubleNum1
ldc1 $f2, doubleNum2
add.d $f4,$f2,$f0 

li $v0, 4
la $a0, message #ldc1 $f12, message
syscall 

li $v0, 3
mov.d $f12,$f4
syscall



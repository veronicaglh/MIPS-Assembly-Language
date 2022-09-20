.data 
prompt1: .asciiz "Enter the number: "
prompt2: .asciiz "The square of the number is: "

.text 
li $v0,4 
la $a0,prompt1
syscall 

li $v0, 5          #The value read from the keyboard(like the number inputed from the user) is stored in v0. 
syscall            #The number 5 represents read integer(the number read from the keyboard)

move $t1, $v0	   #move - means that v0 value will be moved to t1
mul $t2,$t1,$t1    #mul is used for multiplication with overflow meaning three values can be inputed. 
		   #while mult can be used to multiply just two numbers e.g: mult $t1,$t2. 

li $v0, 4 
la $a0,prompt2
syscall 

li $v0, 1
move $a0, $t2
syscall 



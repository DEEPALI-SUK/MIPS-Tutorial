.data
     newline: .asciiz "\n"
.text
 	main:
 		li $a1,7
 		jal displayno
 		
 		li $a1,7
 		jal bitclear
 		
 		move $a1,$v0
 		jal displayno
 		
 		li $v0,10
 		syscall
 	displayno:
 		li $v0,4
 		la $a0,newline
 		syscall
 		
 		li $v0,1
 		la $a0,$a1
 		syscall
 		
 		ja $ra
 	bitclear:
 		#mask is $s0
 		addi $sp,$sp,-4
 		sw $s0,0($sp)
 		
 		#make the mask
 		li $s0,-1
 		sll $s0,$s0,1
 		and $v0,$a1,$s0
 		
 		lw $s0,0($sp)
 		addi $sp,$sp,4
 		
 		ja $ra
 		
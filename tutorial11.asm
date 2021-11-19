#Perform the following switch-case in MIPS32 assembly language. Upon exiting from the switch-case, the program should print the value of ‘i’.
#switch( i )
#{
#case 1: i++ ; // falls through
#case 2: i += 2 ;                               
#break;                                        
#case 3: i += 3 ;
#}

.text

main:

li $v0,5
syscall

move $t0,$v0

c1: 
  bne $t0,1,c2
  addi $t0,$t0,1
  
c2: 
  bne $t0,2,c3
  addi $t0,$t0,2
  j end
  
c3: 
  bne $t0,3,end
  addi $t0,$t0,3
  
end:
 move $a0,$t0
 li $v0,1
 syscall
 li $v0,10
 syscall
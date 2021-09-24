.data
     msg1: .asciiz "number1 is less than number2\n" 
     
.text
   main:
    addi $t0, $zero, 1
    addi $t1, $zero, 2
    
    slt  $s0, $t0,$t1#set less than if less than it will return 1
    bne  $s0,$zero, printmsg 
    
   
    
    
    li $v0,10
    syscall
   
   printmsg:
    li $v0,4
    la $a0, msg1
    syscall
    
   
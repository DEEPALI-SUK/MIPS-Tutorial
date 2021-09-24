.data
     msg1: .asciiz "numbers are same\n" 
     msg2: .asciiz "numbers are different\n"
     msg3: .asciiz"nothing happened\n"
.text
   main:
    addi $t0, $zero, 1
    addi $t1, $zero, 1
    beq  $t0,$t1, equal #branch if equal
    
    addi $t0, $zero, 2
    addi $t1, $zero, 1
    bne  $t0,$t1, notequal #branch if not equal
    
   
    b  nothing #branch
    
    li $v0,10
    syscall
   
   equal:
    li $v0,4
    la $a0, msg1
    syscall
    
   notequal:
    li $v0,4
    la $a0, msg2
    syscall
    
   nothing:
    li $v0,4
    la $a0, msg3
    syscall
.data
     arr: .word 5:3 #array will have three elements and all have value 5
.text
    
     addi $t0,$zero, 0
     while:
         beq $t0,12,exit
         # to retrieve from ram
         lw $t5, arr($t0)
         addi $t0,$t0, 4
         li $v0,1
         addi $a0,$t5,0 # 4 bits
         syscall
         j while
     exit:
   
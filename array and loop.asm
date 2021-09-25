.data
     arr: .space 12 #int takes 4 bits therefore for three integers we need space 4*3 =12
.text
     addi $s0,$zero, 1
     addi $s1,$zero, 2
     addi $s2,$zero, 3
     
     #index = $t0
     
     addi $t0,$zero, 0
     
     # to store from registers into the ram
     sw $s0, arr($t0)
     addi $t0,$t0, 4 # 4 bits
     
     sw $s1, arr($t0)
     addi $t0,$t0, 4 # 4 bits
     
     sw $s2, arr($t0)
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
     
     
     
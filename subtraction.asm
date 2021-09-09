.data
   n1: .word 1
   n2: .word 2
.text
  lw $s0, n1
  lw $s1 n2
  
  sub $t3, $s0, $s1
  li $v0, 1
  move $a0, $t3
  syscall
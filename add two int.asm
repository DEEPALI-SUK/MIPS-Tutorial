.data
   n1: .word 1
   n2: .word 2
.text
  lw $t0, n1
  lw $t1 n2
  li $v0, 1
  add $a0, $t1, $t0
  syscall
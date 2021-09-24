.data

.text
  addi $t0, $zero, 40
  addi $t1, $zero, 8
  
  div $s0, $t0, $t1
  
  li $v0, 1
  add $a0 , $zero, $s0
  syscall
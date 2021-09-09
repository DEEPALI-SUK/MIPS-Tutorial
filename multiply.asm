# only for 16 bits number
.data
   n1: .word 10
   n2: .word 9
.text
  lw $s0, n1
  lw $s1 n2
  
  li $v0, 1
  mul $a0, $s0,$s1
  syscall
  
  # or do like this
  # mul $t0, $s0,$s1
  # li $v0, 1
  # add $a0, $zero , $t0
  #syscall
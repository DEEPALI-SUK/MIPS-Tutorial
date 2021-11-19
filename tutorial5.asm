# Write and execute a MIPS-32 assembly language program to execute the following function:
# t2=(t0+t0)-(t1+t3); And print output ‘t2’ at console.
.data
   n0: .word 4
   n1: .word 2
   n3: .word 1 
.text
  lw $t0, n0
  lw $t1 n1
  lw $t3 n3
  add $t4, $t0, $t0
  add $t5, $t1, $t3
  li $v0, 1
  sub $a0, $t4, $t5
  syscall
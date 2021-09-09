.data
.text
  addi $t0, $zero, 2000
  addi $t1, $zero, 10
  mult $t1,$t0
  
  mflo $s0 #mult done the multiplication and mflo stored the result mflo means move from low its a special register 
  li $v0, 1
  add $a0, $zero, $s0
  syscall
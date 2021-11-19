#Call a function to compute Y=(g+h)-(i+j) and print Y.
#Use registers s1, s2 for intermediate storage and s0 for final output of the given function. Suppose s0, s1 and s2 initially have some values.
#Then print values of s0, s1 and s2 computed within function and print initial values of s0, s1 and s2 after returning function. 

main:

 li $a0,4
 li $a1,5
 li $a2,6
 li $a3,7
 
 li $s0,7
 li $s1,3
 li $s2,5
 
 jal func
 
  move $a0,$s0
  li $v0,1
  syscall
  
  move $a0,$s1
  li $v0,1
  syscall
  
  move $a0,$s2
  li $v0,1
  syscall
  
  li $v0,10
  syscall
 
func:
  addi $sp, $sp,-12
  sw $s0,0($sp)
  sw $s1,4($sp)
  sw $s2,8($sp)
  
  add $s1,$a0,$a1
  add $s2,$a2,$a3
  sub $s0,$s1,$s2
  
  move $a0,$s0
  li $v0,1
  syscall
  
  move $a0,$s1
  li $v0,1
  syscall
  
  move $a0,$s2
  li $v0,1
  syscall
  
  lw $s0,0($sp)
  lw $s1,4($sp)
  lw $s2,8($sp)
  
  jr $ra
  


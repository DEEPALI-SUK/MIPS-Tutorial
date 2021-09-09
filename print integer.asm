.data # contains all variables
 number: .word 3 # integer is a word only 32 bits word 
.text #contains all instructions
  li $v0, 1 # to print integer 1 is the code
  lw $a0, number #load word
  syscall
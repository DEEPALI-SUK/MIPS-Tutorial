.data # contains all variables
  message: .asciiz"Hello World!"
.text #contains all instructions
  li $v0, 4 # to print string
  la $a0, message #address of null-terminated string to print
  syscall
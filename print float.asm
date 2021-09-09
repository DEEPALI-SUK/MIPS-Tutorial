.data 
 float_number: .float 6.5 
.text 
  li $v0, 2 # to print float 2 is the code
  lwc1 $f12, float_number #load float from coprocessor1 and write f12 else it won't work
  syscall
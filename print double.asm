.data 
 double_number: .double 6.509 
 zero_double: .double 0.0
.text 
  ldc1 $f2, double_number   # load double from ram to coprocessor1 double needs 2 registers as it has 64 bits so f2 and f3
  ldc1 $f0, zero_double
  li $v0, 3 #it's code is 3
  add.d $f12, $f2,$f0 #to print double we have to add
  
  syscall
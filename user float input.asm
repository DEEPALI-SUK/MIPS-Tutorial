.data
     message: .asciiz "Enter float no"
     zeroasfloat: .float 0.0
.text
    lwc1 $f4, zeroasfloat
     #display
    li $v0, 4
    la $a0, message
    syscall
    
    #get input
    li $v0,6 #float
    syscall
    
    li $v0, 2
    add.s $f12,$f0,$f4
    syscall
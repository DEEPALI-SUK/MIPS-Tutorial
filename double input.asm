.data
     prompt: .asciiz"Enter double value"
.text
    
     #display
    li $v0, 4
    la $a0, prompt
    syscall
    
    #get input
    li $v0,7 #double
    syscall
    
    li $v0, 3
    add.d $f12,$f0,$f10 #f10 default
    syscall
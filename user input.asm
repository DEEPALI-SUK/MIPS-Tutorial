.data
    prompt: .asciiz "Enter your age"
    message: .asciiz "\nYour age is"
.text
    #prompt the user to enter age
    li $v0, 4
    la $a0, prompt
    syscall
    
    #get input
    li $v0,5 #integer
    syscall
    
    #store age in t0
    move $t0,$v0
    
    #display
    li $v0, 4
    la $a0, message
    syscall
    #print age
    li $v0, 1
     move $a0,$t0
    syscall
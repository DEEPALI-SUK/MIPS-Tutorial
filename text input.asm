.data
    i: .space 10 #reserve the next specified number of bytes in data segment
.text
    #getting user input as text
    li $v0, 8
    la $a0, i #to store input
    li $a1, 10 #to store the length
    syscall
    
    #displays text
    li $v0,4
    la $a0, i
    syscall
    
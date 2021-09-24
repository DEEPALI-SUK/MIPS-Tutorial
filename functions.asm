.data
     message: .asciiz "Hello\n"
.text
     main: 
        jal  printmsg #jump and link to that function
        
        #tells system the program is done
        li $v0,10
        syscall #these 2 lines are imp
        
     printmsg:
        li $v0,4
        la $a0, message
        syscall
        
        jr $ra #jump to main
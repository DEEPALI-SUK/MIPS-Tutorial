.data
     
.text
     main: 
        # a registers used for passing arguments and v1 for return
        addi $a1,$zero,1
        addi $a2,$zero,2
        jal  addnumbers 
        
        li $v0, 1
        addi $a0,$v1,0
        syscall
        #tells system the program is done
        li $v0,10
        syscall #these 2 lines are imp
        
     addnumbers:
         add $v1,$a1,$a2
        
        jr $ra #jump to main
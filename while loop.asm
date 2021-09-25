.data
     msg: .asciiz "After while loop is done"
     space: .asciiz ", "
.text
    main:
      #i=0
      addi $t0, $zero, 0
      
      while:
            bgt $t0,10, exit #i<=10 loop will run else stop
            jal print
            
            addi $t0,$t0,1
            
            j while #jump to while (looping )
     exit:
         li $v0,4
         la $a0, msg
         syscall
         
    li $v0,10
    syscall
    
   print: 
       li $v0,1
       add $a0, $t0,$zero
       syscall
       
       li $v0,4
       la $a0, space
       syscall
       
       jr $ra
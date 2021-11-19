# Implement following if-else condition in MIPS32:
#If (f==g) then
# {
    # g=f+g;
    #print  g;
# }
#Else
#{
   #f=f*g;
   #print  f;
# }

.data

.text
	main:
	    #input t0
	    li $v0,5
	    syscall
	    move $t0,$v0
	    
	    #input t1
	    li $v0,5
	    syscall
	    move $t1,$v0
	    
	    beq $t0,$t1,true
	    mul $t0,$t1,$t0
	    move $a0,$t0
	    li $v0,1
	    syscall
	    
	    li $v0,10
	    syscall
	true:
	    add $t1,$t1,$t0
	    move $a0,$t1
	    li $v0,1
	    syscall
		
	    
	    
	    
	    

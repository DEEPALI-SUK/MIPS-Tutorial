.data
	arr: .word 12,4,6
	len: .word 3
	s: .word 0
	avg: .word 0
.text
	main:
		la $t0,arr #base address
		li $t1,0 #i=0
		lw $t2,len 
		li $t3, 0 #sum=0
		sumloop:
			lw $t4,($t0) # $t4=arr[i]
			add $t3,$t3,$t4 #s+=arr[i]
			
			add $t1,$t1,1
			add $t0,$t0,4 #updating array address
			blt $t1,$t2,sumloop #if i<len loop
			
			sw $t3,s
			
			li $v0,1
 			move $a0,$t3
 			syscall #display sum
 			
 			#calculate the avg
 			div $t5,$t3,$t2
 			sw $t5,avg
 			
 			li $v0,10
 			syscall
 		
			
		
	
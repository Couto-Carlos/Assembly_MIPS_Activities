.data
 	atividade: .asciiz "Fatorial em Mips"

.text



main: 
	j fat1
	j fat2
	
	

fat1:
	addi $s4, $zero, 5
	addi $s7, $zero, 1
	j lab1
lab1: 	
	mul $s7, $s7, $s4
	addi $s4,$s4, -1
	bne $s4, $zero, lab1
	add $s3, $s7, $zero
	
fat2:
	addi $s4, $zero, 9
	addi $s7, $zero, 1
	j lab2
lab2:
	mul $s7, $s7, $s4
	addi $s4, $s4, -1 
	bne $s4, $zero, lab2
	add $s2, $s7, $zero
	add $s3,$s3, $s2
	
	li $v0, 1
	la $a0, 0($s3)
	syscall
	
	
	
	 
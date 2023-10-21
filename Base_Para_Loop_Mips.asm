.data

	Atividade : .asciiz "Base para Loop em Mips"
	
	i: .word 1
	k: .word 5
	save: .word 5
	save1: .word 5
	save2: .word 5
	save3: .word 5
	save4: .word 5
	save5: .word 5
.text

la $t0, i
lw $s3, 0($t0)
la $t0, k
lw $s5, 0($t0)
la $t0, save
lw $s6, 0($t0)
j Loop


Loop: 

sll $t1, $s3, 2
add $t1, $t1, $s6 
lw $t0, 0($t1) 
bne $t0, $s5, Exit 
addi $s3, $s3, 1
j Loop

Exit:
li $v0, 10
syscall
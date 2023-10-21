.data

	Atividade : .asciiz "Base para Calculo em Mips"

	i: .word 3
	g: .word 5
	j: .word 2
	h: .word 5
	
	f: .word 0


.text

la $t0, g
lw $s1, 0($t0)
la $t0, h
lw $s2, 0($t0)
la $t0, i 
lw $s3, 0($t0)
la $t0, j
lw $s4, 0($t0)


addu $t0, $s1, $s2
addu $t1, $s3, $s4
subu $s0, $t0, $t1

la $t0, f
sw $s0, 0($t0)

li $v0, 1

move $a0, $s0
syscall
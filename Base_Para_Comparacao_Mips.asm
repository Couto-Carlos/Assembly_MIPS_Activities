.data

	Atividade : .asciiz "Base para Comparação em Mips"

	i: .word 1
	g: .word 2
	j: .word 1
	h: .word 3
	
	f: .word 0

	iguais: .asciiz "iguais"
	diferentes: .asciiz "diferentes"
.text

la $t0, i
lw $s1, 0($t0)
la $t0, g
lw $s2, 0($t0)
la $t0, j
lw $s3, 0($t0)
la $t0, h
lw $s4, 0($t0)



add $t0, $s1, $s2
add $t1, $s3, $s4
sub $s0, $t0, $t1


beq $t0,$t1, Else
j If

If:
li $v0, 4
la $a0, diferentes
syscall
j Exit

Else: 
li $v0, 4
la $a0, iguais
syscall
j Exit

Exit:
li $v0 10
syscall


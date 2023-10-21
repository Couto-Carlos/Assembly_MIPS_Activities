.data

	Atividade : .asciiz "Sistema de Média(UFERSA) em Mips"

	digite: .asciiz "Digite um numero:"
	valor: .asciiz "O valor "
	atingiu3: .asciiz " atingiu o esperado com 3 valores "
	atingiu4: .asciiz " atingiu o esperado com 4 valores "
	nao: .asciiz "Não foi dessa vez. O valor "
	abaixo: .asciiz " está abaixo do esperado"

.text

li $v0, 4
la $a0, digite
syscall

li $v0, 5
syscall

move $t0, $v0
move $s1, $t0

li $v0, 4
la $a0, digite
syscall

li $v0, 5
syscall

move $t0, $v0
move $s2, $t0

li $v0, 4
la $a0, digite
syscall

li $v0, 5
syscall

move $t0, $v0
move $s3, $t0




add $t0, $s1, $s2
add $t0, $s3, $t0

move $s7, $t0

slti $t1, $s7, 21
bne $zero,$t1, Quarta

li $v0, 4
la $a0, valor
syscall

li $v0, 1
la $a0, 0($s7)
syscall

li $v0, 4
la $a0, atingiu3
syscall

j Exit

Quarta:

li $v0, 4
la $a0, digite
syscall

li $v0, 5
syscall

move $t0, $v0
move $s4, $t0

add $t0, $s7, $s4
move $s6, $t0

slti $t0, $s6, 24
bne $zero, $t0, Naofoi

li $v0, 4
la $a0, valor
syscall

li $v0, 1
la $a0, 0($s6)
syscall

li $v0, 4
la $a0, atingiu4
syscall

j Exit

Naofoi:

li $v0, 4
la $a0, nao
syscall

li $v0, 1
la $a0, 0($s6)
syscall

li $v0, 4
la $a0, abaixo
syscall

j Exit

Exit:
li $v0, 10
syscall


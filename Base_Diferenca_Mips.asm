.data

	Atividade : .asciiz "Maior que, Menor que em Mips"

	digite: .asciiz "Digite um numero:"
	valor: .asciiz "O valor "
	maior: .asciiz " é maior que "
	menor: .asciiz " é menor que "

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

slt $t0,$s2,$s1
beqz $t0, Menor
j Maior


Menor:

li $v0, 4
la $a0, valor
syscall

li $v0, 1
la $a0, 0($s1)
syscall

li $v0, 4
la $a0, menor
syscall

li $v0, 1
la $a0, 0($s2)
syscall

j Exit

Maior:

li $v0, 4
la $a0, valor
syscall

li $v0, 1
la $a0, 0($s1)
syscall

li $v0, 4
la $a0, maior
syscall

li $v0, 1
la $a0, 0($s2)
syscall

j Exit


Exit:

li $v0, 10
syscall


  





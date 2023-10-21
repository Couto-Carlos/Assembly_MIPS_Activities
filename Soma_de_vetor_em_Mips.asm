.data
    atividade: .asciiz "Soma de vetor em Mips"
    vetor: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    resultado: .word 0

.text
.globl main

main:
    la $a0, vetor
    la $a1, resultado
    li $t2, 10

loop_soma:
 
    jal soma
    sw $v0, 0($a1)
    addi $a0, $a0, 4
    subi $t2, $t2, 1
    lw $t3, 0($a1) 
    bnez $t2, loop_soma

    li $v0, 1
    move $a0, $t3  
    syscall

    li $v0, 10
    syscall

soma:

    lw $t0, 0($a0)
    lw $t1, 0($a1)
    add $v0, $t0, $t1



    jr $ra

	
	

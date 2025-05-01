.data
    val1: .word 10

.text
.globl main 
.globl loop

main:

    ori $t0, $t0, 10 
    ori $t1, $t1, 10 

    beq $t0, $t1, loop 
    ori $t1, $t0, 0xFFFF
loop:
    lw $t1, val1 
    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 10
    syscall
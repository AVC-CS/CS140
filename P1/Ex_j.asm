.data
    val1: .word 0

.text
.globl main 
.globl loop

main:

    lui $t0, 0x1001
    ori $t0, $t0, 0x0000

    j loop
    ori $t1, $t0, 0xFFFF
loop:
    lw $t1, 0($t0)
    li $v0, 1
    move $a0, $t1
    syscall


    li $v0, 10
    syscall
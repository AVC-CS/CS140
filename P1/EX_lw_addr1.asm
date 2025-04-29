.data
    array: .word 100, 200, 300, 400, 500
    size: .word 5
    newline: .asciiz "\n"
.text
.globl main
main:
    la $t0, array
    lw $t1, 0($t0)
    lw $t2, 4($t0)
    lw $t3, 8($t0)
    lw $t4, 12($t0)
    lw $t5, 16($t0)

    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    li $v0, 1
    move $a0, $t2
    syscall
    
    li $v0, 10
    syscall


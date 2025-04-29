.data 
    val1: .word 0
    newline: .asciiz "\n"
.text
.globl main

main:

    lui $12, 0xFFFF
    ori $12, $12, 0xFFFF

    lui $13, 0x1001
    ori $13, $13, 0x0008

    # sw $12, -8($13)
    sw $12, 0xFFF8($13)
    

    li $v0, 10
    syscall


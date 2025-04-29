.data
    array: .word 100, 200, 300, 400, 500
.text
.globl main
main:
    lui $t0, 0x1001
    ori $t0, $t0, 0x0004

    # load the value of the address 0x10010004 into $t1
    lw $t1, 0($t0)

    li $v0, 1
    move $a0, $t1
    syscall
    
    li $v0, 10
    syscall


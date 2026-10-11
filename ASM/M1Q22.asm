        .data
sdn:    .word 0x00000001        # SDN: smallest denormal number
two:    .float 2.0
three:  .float 3.0
q34:    .float 0.75
        .text
        .globl main
main:
        lwc1    $f1, sdn        # $f1 = SDN
        lwc1    $f2, two        # $f2 = 2.0
        lwc1    $f3, three      # $f3 = 3.0
        lwc1    $f4, q34        # $f4 = 0.75
        div.s   $f5, $f1, $f2   # divide $f1 by $f2, put the result in $f5
        div.s   $f6, $f1, $f3   # divide $f1 by $f3, put the result in $f6
        mul.s   $f7, $f1, $f4   # multiply $f1 by $f4, put the result in $f7
        mfc1    $t0, $f5        # copy the bits of $f5 to $t0
        mfc1    $t1, $f6        # copy the bits of $f6 to $t1
        mfc1    $t2, $f7        # copy the bits of $f7 to $t2
        li      $v0, 10         # exit
        syscall

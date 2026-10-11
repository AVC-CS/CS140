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
        div.s   $f5, $f1, $f2   # SDN / 2
        div.s   $f6, $f1, $f3   # SDN / 3
        mul.s   $f7, $f1, $f4   # SDN * 0.75
        mfc1    $t0, $f5        # $t0 = bits of SDN / 2
        mfc1    $t1, $f6        # $t1 = bits of SDN / 3
        mfc1    $t2, $f7        # $t2 = bits of SDN * 0.75
        li      $v0, 10         # exit
        syscall

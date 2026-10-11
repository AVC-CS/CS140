        .data
sdn:    .word 0x00000001        # SDN: smallest denormal number
ldn:    .word 0x007FFFFF        # LDN: largest denormal number
snn:    .word 0x00800000        # SNN: smallest normal number
        .text
        .globl main
main:
        lwc1    $f1, sdn        # $f1 = SDN
        lwc1    $f2, ldn        # $f2 = LDN
        lwc1    $f4, snn        # $f4 = SNN
        add.s   $f3, $f1, $f2   # SUM = SDN + LDN
        sub.s   $f12, $f4, $f2  # GAP = SNN - LDN
        mfc1    $t0, $f3        # $t0 = bits of SUM
        mfc1    $t1, $f12       # $t1 = bits of GAP
        add     $s0, $t0, $t1   # Problem C analyzes this instruction
        li      $v0, 10         # exit
        syscall

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
        add.s   $f3, $f1, $f2   # add the values in $f1 and $f2, put the result in $f3
        sub.s   $f12, $f4, $f2  # subtract $f2 from $f4, put the result in $f12
        mfc1    $t0, $f3        # copy the bits of $f3 to $t0
        mfc1    $t1, $f12       # copy the bits of $f12 to $t1
        add     $s0, $t0, $t1   # Question C analyzes this instruction
        li      $v0, 10         # exit
        syscall

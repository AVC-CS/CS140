        .data
val1:    .word  0x00800000      
val2:    .word  0x007FFFFF      
	.text
    .globl  main

main:
    li      $v0, 2 	# print floating service code
    lwc1 	$f5, val1
    lwc1 	$f7, val2
    mfc1    $t0, $f5
    mfc1    $t1, $f7
    sub.s 	$f12, $f5, $f7
    mfc1    $t0, $f12
    add     $s0, $t0, $t1
    li 	$v0, 2		# print service for floating
    syscall
## End of file
## shiftTwo.asm
## 
## Program to logical shift left a pattern
        .text
        .globl  main

main:
        ori      $8, $0, 0x0008     # put bit pattern into register $8
        sll      $9, $8, 2          # shift left logical by two
        sra      $10, $9, 2           # shift left logical by two

## End of file

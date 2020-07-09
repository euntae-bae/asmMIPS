        .text
        .globl main
main:
        lui $t0, 0x1001
        lw $t1, 0($t0)
        lw $t2, 4($t0)
        addu $s0, $t1, $t2
        sw $s0, 8($t0)

        .data
# [1001 0000]
num1:   .word 0x1234
# [1001 0004]
num2:   .word 0x4567
# [1001 0008]
result: .word 0

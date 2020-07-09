        .text
        .globl main
main:
        ori $t0, $zero, 0x10
        ori $t1, $zero, 0x20
        slt $t2, $t0, $t1
        bne $t2, $zero, max1 # if $t0 < $t1 then goto max1
        # else
        add $s0, $zero, $t0
        j next1
max1:
        add $s0, $zero, $t1

next1:
        ori $t0, $zero, 0x500
        ori $t1, $zero, 0x999
        slt $t2, $t0, $t1
        beq $t2, $zero, max2 # if $t0 >= $t1 then goto max2
        # else
        add $s1, $zero, $t1
        j next2
max2:
        add $s1, $zero, $t0

next2:
        lui $t0, 0x1001
        sw $s0, 0($t0)
        sw $s1, 4($t0)

        .data
num1:   .word 0
num2:   .word 0

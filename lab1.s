    .text
    .globl main
main:
    #and $t0, $t0, $zero
    #addi $t0, $zero, 10
    ori $t0, $zero, 10
    #and $s0, $s0, $zero
    #addi $s0, $zero, 20
    ori $s0, $zero, 20
    mult $s0, $t0
    mflo $s1

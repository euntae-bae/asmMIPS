    .text
    .globl main

main:
    ori $t0, $zero, 10 # $t0 = 10
    ori $t1, $zero, 20 # $t1 = 20
    mult $t0, $t1 # {HI, LO} = $t0 * $t1
    mflo $s0 # s1 <- $t0 * $t1 의 하위 32비트
    mfhi $s1 # s1 <- $t0 * $t1 의 상위 32비트

    ori $t0, $zero, 100
    ori $t1, $zero, 5
    div $t0, $t1
    mflo $s0 # s0 <- $t0 / $t1
    mfhi $s1 # s1 <- $t0 % $t1

    ori $t0, $zero, 137
    ori $t1, $zero, 4
    div $t0, $t1
    mflo $s0
    mfhi $s1

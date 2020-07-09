    .text
    .globl main
main:
    # lui: load upper immediate
    lui $t0, 0x1234 # $t0 = 0x12340000
    lui $t1, 0xabcd # $t1 = 0xabcd0000
    lui $t2, 0x4567 # $t2 = 0x45670000
    lui $t3, 0xef22 # $t3 = 0xef220000

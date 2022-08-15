.data 0x10000000
numero: .word 0xabcd12bd

.text
main:
lw $s0, numero($0)
andi $s0, $s0, 0xfffffebb
sw $s0, numero($0)
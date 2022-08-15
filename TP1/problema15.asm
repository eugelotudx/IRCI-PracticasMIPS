.data 0x10000000
numero: .word 0xff0f1235

.text
main:
lw $s0, numero($0)
andi $s0, $s0, 0xfffffffb
ori $s0, $s0, 0x00000140
sw $s0, numero($0)
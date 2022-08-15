.data 0x10000000
numero: .word 0x1237

.text
main:
lw $s0, numero($0)
sll $s0, $s0, 5
sw $s0, numero($0)
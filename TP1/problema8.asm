.data 0x10000000
v: .word 10,20,25,500,3
direccion: .word 0x10010000

.text
main:
lw $s0, v($2)
addu $2, $2, 0x04
lw $s1, v($2)
addu $2, $2, 0x04
lw $s2, v($2)
addu $2, $2, 0x04
lw $s3, v($2)
addu $2, $2, 0x04
lw $s4, v($2)

andi $2, $2, 0
lw $s5, direccion($2)
sw $s0, 0($s5)
addu, $s5, $s5, 0x04
sw $s1, 0($s5)
addu $s5, $s5, 0x04
sw $s2, 0($s5)
addu $s5, $s5, 0x04
sw $s3, 0($s5)
addu $s5, $s5, 0x04
sw $s4, 0($s5)

.data 0x10000000
v: .word 10,20,25,500,3
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
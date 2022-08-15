.data  0x10000000
vector: .word 10, 20

.text
main: 
lw $t0,vector($0)
lw $t1,vector+4($0)
add $t0, $t0, $t1
sw $t0, vector+8($0)

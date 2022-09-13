.data
vector: .word 2, -4, -6
res: .space 3

.text
main: 
lw $t0,vector($0)
lw $t1,vector+4($0)
lw $t2,vector+8($0)

andi $t3, $t3, 0
sge $t3, $t0, $0
sb $t3, res($0)

andi $t3, $t3, 0
sge $t3, $t1, $0
sb $t3, res+1($0)

andi $t3, $t3, 0
sge $t3, $t2, $0
sb $t3, res+2($0)
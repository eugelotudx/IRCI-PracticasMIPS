.data
vector: .byte 0x00, 0x01, 0x01, 0x01, 0x00
res: .space 3

.text
main: 
lb $t0,vector($0)
lb $t1,vector+1($0)
lb $t2,vector+2($0)
lb $t3,vector+3($0)
lb $t4,vector+4($0)

and $t5,$t5,$0
and $t6,$t6,$0
and $t7,$t7,$0

and $t5, $t0, $t4 # t5 almacena 1 si (V[1] and V[5])

or $t6, $t0, $t1
and $t7, $t6, $t2 # t7 almacena 1 si ((V[1] or V[2]) and V[3])

and $t6,$t6,$0
or $t6, $t1, $t3 #t6 almacena 1 si (V[2] or V[4])

sb $t5,res($0)
sb $t6,res+1($0)
sb $t7,res+2($0)

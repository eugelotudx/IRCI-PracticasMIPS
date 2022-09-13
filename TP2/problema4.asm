.data
 dato1: .word 2
 dato2: .word 10
 dato3: .word 50
 dato4: .word 70
 dato5: .word 34
 res: .space 4

.text
main:
 lw $t0, dato1($0)
 lw $t1, dato2($0)
 lw $t2, dato5($0)
 
 and $t3, $t3, $0
 
Si:
 bge $t0, $t2, finsi1
 ble $t1, $t2, finsi1
entonces:
 li $t3, 1
 
 finsi1:
 lw $t0, dato3($0)
 lw $t1, dato4($0)
Si2:
 bge $t0, $t2, fin
 ble $t1, $t2, fin
entonces2:
 li $t3, 1 
fin:
 sw $t3, res($0)
  
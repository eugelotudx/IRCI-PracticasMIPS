.data
 rango1: .word 4
 rango2: .word 10
 vector: .word 1,9,8,4,5,6,7
 longitud: .word 7
 res: .space 4
 
.text
main:
 lw $t0, rango1($0)
 lw $t1, rango2($0)
 la $t2, vector
 lw $t3, longitud($0)
 
 and $t4, $t4, 0 # se acumulará el resultado
 
 li $t5, 0 # t5 = i
 
para:
 bge $t5, $t3, finpara
 lw $t6, 0($t2)
 si: 
     ble $t6, $t0, finsi
     bge $t6, $t1, finsi
 entonces:
     addi $t4, $t4, 1
 finsi:
     addi $t5, $t5, 1
     addi $t2, $t2, 4
     j para
 
finpara: sw $t4, res($0)
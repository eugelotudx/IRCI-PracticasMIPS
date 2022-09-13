.data
 vector: .word 0,1,3,0,0,9,0,7
 longitud: .word 8
 total: .space 4

.text
main:
 la $t0, vector #t0 contiene la dirección del vector
 lw $t1, longitud($0) #t1 contiene la longitud del vector
 li $t2, 0 #t2 = i
 and $t3, $t3, $0 #3 = 0, será utilizado para almacenar el resultado
 
para:
 bgt $t2, $t1, finpara
 lw $t4,0($t0)
 bne $t4, $0, noescero
 add $t3, $t3, 1
 noescero:
 addi $t2, $t2, 1
 addi $t0, $t0, 4
 j para

finpara:
 sw $t3, total($0)
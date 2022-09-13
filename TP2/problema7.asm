.data
 vector: .asciiz "hola"
 caracter: .byte 'a'
 .align 2
 total: .space 4

.text
main:
  la $t0, vector
  lb $t1, caracter($0)
  andi $t2, $t2, 0
  
mientras:
  lb $t3,0($t0)
  beq $t3, $0, finmientras
  Si:
    bne $t3, $t1, finsi
  entonces:
    addi $t2, $t2, 1
  finsi:
  addi $t0, $t0, 1
  j mientras
finmientras:
  sw $t2, total($0)
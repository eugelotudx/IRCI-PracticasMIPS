.data  0x10000000
num1: .word 18
num2: .word -1215

.data 0x10010000
resultados: .space 8

.text
main: 
lw $s0, num1($0)
li $s3, 5
div $s0, $s3
mflo $s1 # lo almacena el cociente
mfhi $s2 # hi almacena el resto
sw $s1, resultados($0)

lw $s0, num2($0)
li $s3, 5
div $s0, $s3
mflo $s1 # lo almacena el cociente
mfhi $s2 # hi almacena el resto
sw $s1, resultados+4($0)

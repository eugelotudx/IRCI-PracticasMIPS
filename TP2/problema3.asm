#Diseña un programa en ensamblador que defina un vector de enteros, V,
#inicializado a los siguientes valores V=[1, -4, -5, 2] y obtenga como resultado
#una variable booleana que será 1 si todos los elementos de este vector son
#menores que cero.

.data
vector: .word 1, -4, -5, 2
res: .space 1

.text:
main:

andi $t1, $t1, 0
lw $t0, vector($0)
slt $t1, $t0, $0

lw $t0, vector+4($0)
slt $t2, $t0, $0
and $t1, $t1, $t2

lw $t0, vector+8($0)
slt $t2, $t0, $0
and $t1, $t1, $t2

lw $t0, vector+12($0)
slt $t2, $t0, $0
and $t1, $t1, $t2

sb $t1, res($0)
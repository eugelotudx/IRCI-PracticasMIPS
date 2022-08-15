.data
palabra: .word 0x10203040

.text
main:
lw $s0, palabra($2)
lh $s1, palabra($2)
ror $s0, $s0, 16
addi $2, $2, 6
sh $s1, palabra($2)
sub $2, $2, 2
sh $s0, palabra($2)
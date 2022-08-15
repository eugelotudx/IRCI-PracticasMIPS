.data
palabra: .word 0x10203040

.text
main:
lw $s0, palabra($2)
add $2, $2, 7
sb $s0, palabra($2)
ror $s0, $s0, 8
sub $2, $2, 1
sb $s0, palabra($2)
ror $s0, $s0, 8
sub $2, $2, 1
sb $s0, palabra($2)
ror $s0, $s0, 8
sub $2, $2, 1
sb $s0, palabra($2)

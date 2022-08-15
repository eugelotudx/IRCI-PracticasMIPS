.data 0x10010002
bytes: .byte  0x10, 0x20, 0x30, 0x40

.data 0x10010100
palabra: .space 4

.text
main:
lb $s0, bytes($2)
sb $s0, palabra($2)
add $2, $2, 1
lb $s0, bytes($2)
sb $s0, palabra($2)
add $2, $2, 1
lb $s0, bytes($2)
sb $s0, palabra($2)
add $2, $2, 1
lb $s0, bytes($2)
sb $s0, palabra($2)
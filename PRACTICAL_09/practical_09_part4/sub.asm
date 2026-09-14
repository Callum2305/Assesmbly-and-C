global sub

section .data
section .text

sub:
    mov   eax, [esp+4]      ; a
    sub   eax, [esp+8]      ; b
    ret
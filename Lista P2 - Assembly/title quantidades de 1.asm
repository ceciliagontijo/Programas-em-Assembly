title quantidades de 1
.model small
.stack 0100h
.code
main proc 

    call leitura

    mov ah, 4ch
    int 21h
main endp

leitura proc 
    mov ah, 1
    int 21h
    and al, 0Fh
    mov bl, al

    mov ah, 2
    mov dl, 10
    int 21h
    xor dx, dx
    mov cx, 8
confere:
    shl bl, 1
    jc um
loop confere
jmp fim
um:
    inc dx
loop confere
fim:
    or dl, 30h
    int 21h
    ret
leitura endp
end main


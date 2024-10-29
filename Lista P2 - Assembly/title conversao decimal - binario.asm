title conversao decimal - binario
.model small
.stack 0100h
.code
main proc
   xor bx, bx
leitura:
    mov ax, 10
    mul bx
    push ax 
    mov ah, 1
    int 21h
    and al, 0Fh
    cmp al, 13
    je pre
    xor ah, ah
    pop bx 
    add bx, ax 
jmp leitura 
pre:
    mov cx, 16
    mov ah, 2
imprime:
    rol bx, 1
    jc um
    mov dl, 0
    or dl, 30h
    int 21h
loop imprime
jmp fim
um:
    mov dl, 1
    or dl, 30h
    int 21h
loop imprime
fim:
    mov ah, 4ch
    int 21h
main endp
end main
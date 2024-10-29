title conversao decimal - hexa
.model small
.stack 0100h
.code
main proc 
    xor bx, bx
    xor dx, dx
    mov cx, 4
ler:
    mov ax, 10
    mul bx
    push ax
    mov ah, 1
    int 21h
    and al, 0Fh
    cmp al, 13
    je imprime
    xor ah, ah
    pop bx
    add bx, ax
jmp ler
imprime:
    mov ah, 2
    mov dl, bh
    shr dl, 4
    cmp dl, 10
    jae letra
    or dl, 30h
    int 21h
    rol bx, 4
loop imprime
jmp fim

letra:
    add dl, 37h
    int 21h
    rol bx, 4
loop imprime

fim: 
    mov ah, 4ch
    int 21h
main endp
end main


    

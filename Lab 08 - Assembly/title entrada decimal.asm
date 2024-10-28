title entrada decimal
.model small
.stack 0100h
.code
main proc 

    xor bx,bx

ler:
    mov ax,10
    mul bx 
    push ax
    mov ah,1
    int 21h
    and al, 0Fh
    cmp al, 13
    je pre
    xor ah,ah
    pop bx
    add bx,ax
jmp ler
pre:
    mov ax, 10
    xchg bx, ax
    xor cx, cx
divide:
    div bx
    push dx
    inc cx
    cmp ax, 0
    je imprime
    xor dx, dx
jmp divide
imprime:
    pop dx
    mov ah, 2
    or dl, 30h
    int 21h
loop imprime

fim:
    mov ah, 4ch
    int 21h
main endp
end main
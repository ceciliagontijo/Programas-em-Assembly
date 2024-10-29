title conversao decimal - octal
.model small
.stack 0100h
.code
main proc 
   main proc 
   xor bx, bx
ler:
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
jmp ler
pre:
    mov cx, 5
conta:
    mov dl, bl
    and dl, 07h
    or dl, 30h
    push dx
    shr bx, 3
loop conta
    mov cx, 5
    mov ah, 2
imprime:
    pop dx
    int 21h
loop imprime

    mov ah, 4ch
    int 21h
main endp
end main

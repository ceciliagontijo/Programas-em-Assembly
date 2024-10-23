title vetor par e impar
.model small
.stack 0100h
.data
    vet db 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
    par db 'Quantidade de par = $'
    impar db 'Quantidade de impar = $'
.code
main proc 

    mov ax, @data
    mov ds, ax

    xor cl, cl
    xor dx, dx
    mov di, 10

confere:
    lea bx, vet
    mov al, dh
    xlat
    test al, 01h 
    jz zero
    inc dl
    inc dh
    dec di
jnz confere
jmp fim

zero:
    inc cl
    inc dh
    dec di
jnz confere

fim:
    push dx
    mov ah, 9
    lea dx, par
    int 21h
    mov ah, 2
    mov dl, cl
    or dl, 30h
    int 21h
    mov dl, 10
    int 21h
    mov ah, 9
    lea dx, impar
    int 21h
    mov ah, 2
    pop dx
    and dx, 000Fh
    or dl, 30h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main

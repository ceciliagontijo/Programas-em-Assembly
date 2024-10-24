title par e impar com cal
.model small
.stack 0100h
.data
    vetor db 10 dup (?)
    par db 10, 13, 'Pares = $'
    impar db 10, 13, 'Impares = $'
.code
main proc 

    mov ax, @data
    mov ds, ax

    mov cx, 10

    call leitura

    mov cx, 10

    call confere

    push dx
    mov ah, 9
    lea dx, par
    int 21h
    pop dx
    mov ah, 2
    or dl, 30h
    int 21h
    push dx
    mov ah, 9
    lea dx, impar
    int 21h
    pop dx
    mov ah, 2
    mov dl, dh
    or dl, 30h
    int 21h

    mov ah, 4ch
    int 21h

main endp 

leitura proc
    lea bx, vetor
    mov ah, 1
let:
    int 21h
    mov [bx], al
    inc bx
loop let
ret
leitura endp

confere proc
    lea bx, vetor
    xor dx, dx
conferir:
    mov al, [bx]
    test al, 01h 
    jz zero
    inc dh ; contador impar
    inc bx
loop conferir 
zero: 
    inc dl ; contador par
    inc bx
loop conferir
ret
confere endp

end main

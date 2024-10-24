title vetor invertido
.model small
.data
    vetor db 7 dup (?)
.code
main proc 

    mov ax, @data
    mov ds, ax

    mov cx, 7

    call leitura
    mov cx, 3
    call inverte
    mov cx, 7
    call imprime

    mov ah, 4ch
    int 21h

main endp

leitura proc 
    xor bx, bx
    mov ah, 1
let:
    int 21h
    mov vetor[bx], al
    inc bx
loop let
ret
leitura endp

inverte proc 
    xor bx, bx
    mov si, 6
inverter:
    mov al, vetor[bx]
    xchg al, vetor[si]
    mov vetor[bx], al
loop inverter
ret 
inverte endp

imprime proc 
    xor bx, bx
    mov ah, 2
    mov dl, 10
    int 21h
imprimir:
    mov dl, vetor[bx]
    int 21h
    inc bx
loop imprimir
ret
imprime endp
end main

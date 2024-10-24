title vogais no vetor
.model small
.stack 0100h
.data
    vetor db 20 dup (?)
    msg db 10, 13, 'Quantidade de vogais = $'
.code
main proc 

    mov ax, @data
    mov ds, ax

    mov cx, 20
    call leitura
    mov cx, 20
    call confere
    call resultado

    mov ah, 4ch
    int 21h

main endp

leitura proc
    xor bx, bx
    mov ah, 1
ler:
    int 21h
    cmp al, 13
    je fim
    mov vetor[bx], al
    inc bx
loop ler
fim:
ret
leitura endp

confere proc
    xor dx, dx
    xor ax, ax
conf:
    mov al, dh
    lea bx, vetor
    xlat
    cmp al, 'a'
    je tem
    cmp al, 'e'
    je tem
    cmp al, 'i'
    je tem
    cmp al, 'o'
    je tem
    cmp al, 'u'
    je tem
    inc dh
loop conf
jmp final
tem:
    inc dl
    inc dh
loop conf
final:
ret
confere endp

resultado proc 
    push dx
    mov ah, 9
    lea dx, msg
    int 21h
    pop dx
    mov ah, 2
    or dl, 30h
    int 21h
ret
resultado endp
end main




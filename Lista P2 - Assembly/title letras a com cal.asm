title letras a com cal
.model small 
.stack 0100h
.data
    vet db 'c', 'e', 'c', 'i', 'l', 'i', 'a'
.code
main proc 

    mov ax, @data
    mov ds, ax

    mov cx, 7
    
    call conf

    mov ah, 2
    or dl, 30h
    int 21h

    mov ah, 4ch
    int 21h

main endp

conf proc
    xor ax, ax
    xor dx, dx
    lea bx, vet
conferir:
    mov al, dh
    xlat
    cmp al, 'a'
    je igual
    inc dh
loop conferir
    jmp fim
igual:
    inc dl
    inc dh
loop conferir
    ret
fim:
conf endp
end main

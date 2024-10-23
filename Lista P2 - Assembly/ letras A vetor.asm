title letras A vetor
.model small
.stack 0100h
.data
    vet db 'c', 'e', 'c', 'i', 'l', 'i', 'a' 
.code
main proc 

    mov ax, @data
    mov ds, ax
    mov cx, 7
    xor ax, ax
    xor dx, dx
confere:
    lea bx, vet
    mov al, dh
    xlat
    cmp al, 'a'
    je igual
    inc dh
loop confere
    jmp fim
igual:
    inc dl
loop confere

fim:
    mov ah, 2
    or dl, 30h
    int 21h
    main endp
    end main
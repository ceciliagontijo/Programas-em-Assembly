title remove elemento
.model small
.stack 0100h
.data
    vetor db 1, 2, 3, 4, 5, 6
.code
main proc 
    mov ax, @data
    mov ds, ax
    mov es, ax

    mov cx, 6
    cld
    lea di, vetor
    mov al, 4
    repne scasb   

    mov bx, di
    dec di
    lea di, vetor+di    
    lea si, vetor+bx
    rep movsb
    mov cx, 5
    xor bx, bx
    mov ah, 2
imprime:
    mov dl, vetor[bx]
    or dl, 30h
    int 21h
    inc bx
loop imprime

    mov ah, 4ch
    int 21h

main endp
end main
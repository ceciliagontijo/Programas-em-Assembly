title remove elemento
.model small
.stack 0100h
pula_linha macro
    push ax
    push dx
    mov ah,2
    mov dl,10
    int 21h
    pop dx
    pop ax
endm
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
    mov ah,1
    int 21h
    and al, 0Fh
    pula_linha
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
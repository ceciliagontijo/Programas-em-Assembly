title rotação vetor
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
    vetor db 1, 2, 3, 4, 5
.code
main proc 
    mov ax, @data
    mov ds, ax
    mov es, ax

    mov ah, 1
    int 21h  
    and al, 0fh
    xor ah, ah
    mov bx, ax      ; salva o valor k em bx
    mov di, bx
    dec di
    mov dx, 5
    sub dx, di   
    mov cx, dx
empilha:
    mov al, vetor[di]
    push ax
    inc di
loop empilha
    lea di, vetor
    xchg cx, dx
    dec cx
    mov si, bx
desloca:
    mov al, vetor[di]
    xchg vetor[si], al
    inc di
    inc si
loop desloca
    mov cx, bx
    mov di, bx  ; bx = k
    dec di
reloca:
    pop ax
    xor ah, ah
    mov vetor[di], al
    dec di
loop reloca
    pula_linha
    mov cx, 5
    xor di, di
    mov ah, 2
imprime:
    mov dl, vetor[di]
    or dl, 30h
    int 21h
    inc di
loop imprime
    mov ah, 4ch
    int 21h
main endp
end main
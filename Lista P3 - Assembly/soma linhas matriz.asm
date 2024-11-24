title soma linhas matriz
.model small
.stack 0100h
.data
    matriz db 0, 1, 2, 3
           db 4, 5, 6, 7
           db 1, 3, 2, 1
           db 4, 5, 8, 8

    vetor db 4 dup(?)
.code
main proc 
    mov ax, @data
    mov ds, ax

    call somar
    call imprime

    mov ah, 4ch
    int 21h
main endp

somar proc
    mov bx, 12
    mov di, 4
l1: 
    xor ax, ax
    xor si, si
    mov cx, 4
l2:
    add al, matriz[bx][si]
    inc si
loop l2
    push ax
    sub bx, 4
    dec di
jnz l1
    mov cx, 4
    xor si, si
reloca:
    pop ax
    mov vetor[si], al
    inc si
loop reloca
    ret
somar endp
imprime proc
    mov di, 4
    xor si, si
contagem:
    xor cx, cx
    xor ah, ah
    mov al, vetor[si]
    mov bx, 10
decimal:
    xor dx, dx
    div bx
    push dx
    inc cx
    cmp ax, 0
    je impressao
    jmp decimal
impressao:
    mov ah, 2
    pop dx
    or dl, 30h
    int 21h
loop impressao
    mov dl, 10
    int 21h
    inc si
    dec di
jnz contagem
    ret
imprime endp
end main
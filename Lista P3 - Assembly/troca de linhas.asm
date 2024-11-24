title troca de linhas
.model small
.stack 0100h
pula_linha macro
    push ax
    push dx
    mov ah, 2
    mov dl, 10
    int 21h
    pop dx
    pop ax
endm
.data
    matriz db 0, 1, 2, 3
           db 4, 5, 6, 7
           db 2, 2, 1, 3
           db 9, 8, 7, 6
.code
main proc
    mov ax, @data
    mov ds, ax

    xor si, si
    mov di, 12
    xor bx, bx
    mov cx, 4
troca:
    mov al, matriz[si][bx]
    xchg matriz[di][bx], al
    mov matriz[si][bx], al
    inc bx
loop troca

    mov di, 4
    xor bx, bx
I1:
    mov cx, 4
    xor si, si
I2:
    mov ah, 2
    mov dl, matriz[bx][si]
    or dl, 30h
    int 21h
    inc si
loop I2
    pula_linha
    add bx, 4
    dec di
    jnz I1

    mov ah, 4ch
    int 21h
main endp
end main
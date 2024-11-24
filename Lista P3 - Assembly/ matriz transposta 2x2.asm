title matriz transposta
.model small
.stack 0100h
pula_linha macro
    push ax
    push dx
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    push dx
    push ax
endm
.data
    matriz db 1, 2
           db 3, 4

.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, matriz[0][1]
    xchg matriz[2][0], al
    mov matriz[0][1], al

    mov di, 2
    xor bx, bx

l1:
    mov cx, 2
    xor si, si
l2:
    mov ah, 2
    mov dl, matriz[bx][si]
    or dl, 30h
    int 21h
    inc si
loop l2
    pula_linha
    add bx, 2
    dec di
    jnz l1

    mov ah, 4ch
    int 21h

main endp
end main

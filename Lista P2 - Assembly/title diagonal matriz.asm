title diagonal matriz
.model small
.stack 0100h
.data
    mat db '?', 1, 2, 4
        db 4, '?', 5, 6
        db 7, 8, '?', 9
        db 0, 1, 2, '?'
.code
main proc 

    mov ax, @data
    mov ds, ax

    xor si, si
    xor bx, bx
    mov ah, 1
    mov cx, 4
leitura:
    int 21h
    mov mat[bx][si], al
    inc si
    add bx, 4
loop leitura

    xor bx, bx
    mov ah, 2
    mov dl, 10
    int 21h
    mov di, 4
l1:
    mov cx, 4
    xor si, si
l2:
    mov ah, 2
    mov dl, mat[bx][si]
    or dl, 30h
    int 21h
    inc si
loop l2
    mov dl, 10
    int 21h
    add bx, 4
    dec di
    jnz l1

    mov ah, 4ch
    int 21h
main endp
end main





title soma diagonal mat
.model small
.stack 0100h
.data
    mat db 2, 0, 0
        db 1, 1, 1
        db 2, 2, 2
    msg db 'Soma = $'
.code
main proc 

    mov ax, @data
    mov ds, ax

    xor bx, bx
    xor si, si
    xor dx, dx
    mov cx, 3
soma:
    add dl, mat[bx][si]
    add bx, 3
    inc si
loop soma
    push dx
    mov ah, 2
    mov dl, 10
    int 21h
    mov ah, 9
    lea dx, msg
    int 21h
    pop dx
    mov ah, 2
    or dl, 30h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main
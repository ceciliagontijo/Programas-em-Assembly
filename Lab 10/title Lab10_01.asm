title Lab10_01
.model small
.stack 0100h
.data
    matriz db 1, 2, 3, 4
           db 4, 3, 2, 1
           db 5, 6, 7, 8
           db 8, 7, 6, 5
.code
main proc 
    mov ax, @data
    mov ds, ax

    mov di, 4
    call impressao

    mov ah, 4ch
    int 21h

main endp

impressao proc
    xor bx, bx
    mov ah, 2
l1:
    mov dl, 10
    int 21h
    mov cx, 4
    xor si, si
l2:
    mov dl, matriz[bx][si]
    or dl, 30h
    int 21h
    inc si
loop l2
    add bx, 4
    dec di
jnz l1
    ret
impressao endp
end main
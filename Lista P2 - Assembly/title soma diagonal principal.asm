title soma diagonal principal
.model small
.stack 0100h
.data
    matriz dw 4 dup(?)
           dw 4 dup(?)
           dw 4 dup(?)
           dw 4 dup(?)
    msg db 10, 13, 'Somatoria = $'
.code
main proc 
    mov ax, @data
    mov ds, ax

    call leitura
    mov di, 4
    call soma

    mov ah, 4ch
    int 21h

main endp

leitura proc
    xor bx, bx
    mov di, 4
l1:
    mov cx, 4
    xor si, si
l2:
    mov ah, 1
    int 21h
    and al, 0Fh
    xor ah, ah
    mov matriz[bx][si], ax
    add si, 2
loop l2
    add bx, 8
    dec di
    jnz l1

    ret
leitura endp

soma proc
    xor bx, bx
    xor si, si
    xor ax, ax
conta:
    add ax, matriz[bx][si]
    add si, 2
    add bx, 8
    dec di
jnz conta
    xchg ax, cx
    mov ah, 9
    lea dx, msg
    int 21h

    mov ah, 2
    mov dx, cx
    or dl, 30h
    int 21h
    ret
soma endp
end main


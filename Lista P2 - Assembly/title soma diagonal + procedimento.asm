title soma diagonal + procedimento
.model small
.stack 0100h
.data
    matriz  db 3 dup(?)
            db 3 dup(?)
            db 3 dup(?)
.code
main proc 
    mov ax, @data
    mov ds, ax

    mov di, 3
    call leitura
    mov cx, 3
    call somar

    mov ah, 4ch
    int 21h

main endp

leitura proc
    xor bx, bx
    mov ah, 1
l1:
    mov cx, 3
    xor si, si
l2:
    int 21h
    mov matriz [bx][si], al
    inc si
loop l2
    add bx, 3
    dec di
    jnz l1
    ret
leitura endp 

somar proc 
    xor bx, bx 
    xor si, si
    xor dx, dx
soma:
    add dl, matriz[bx][si]
    inc si
    add bx, 3
loop soma
    mov ah, 2
    or dl, 30h
    int 21h
    ret
somar endp

end main
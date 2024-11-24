title maior e menor matriz
.model small
.stack 0100h
.data
    matriz db 3, 1, 2, 3
           db 4, 5, 6, 7
           db 8, 5, 2, 4
           db 7, 6, 5, 4

    msg db 10, 13, 'Maior = $'
    msg2 db 10, 13, 'Menor = $'
.code
main proc 
    mov ax, @data
    mov ds, ax

    lea di, matriz
    cld
    xor bx, bx
    xor dx, dx
    mov cx, 16
confere_maior:
    lodsb
    cmp al, dl
    ja maior
loop confere_maior
jmp confere_menor
maior:
    mov bh, al
    mov dl, al
loop confere_maior
confere_menor:
    lea si, matriz        ; pq nao posso usar di dnv?
    cld
    mov cx, 16
confere:
    lodsb
    cmp al, dl
    jb menor
loop confere
jmp fim
menor:
    mov bl, al
    mov dl, al
loop confere
fim:
    mov ah, 9
    lea dx, msg
    int 21h
    mov ah, 2
    mov dl, bh
    or dl, 30h
    int 21h
    mov ah, 9
    lea dx, msg2
    int 21h
    mov ah, 2
    mov dl, bl
    or dl, 30h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main
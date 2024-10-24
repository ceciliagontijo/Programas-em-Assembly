title diagonal matriz com procedimento
.model small
.stack 0100h
.data
     matriz db '?', 1, 2, 3
            db 4, '?', 5, 6
            db 7, 8, '?', 9
            db 0, 1, 2, '?'
.code
main proc 
    mov ax, @data
    mov ds, ax

    mov cx, 4
    call leitura
    mov di, 4
    call imprimir
    
    mov ah, 4ch
    int 21h

main endp

leitura proc 
    xor bx, bx
    xor si, si
    mov ah, 1
ler:
    int 21h
    mov matriz[bx][si], al
    add bx, 4
    inc si
loop ler
    ret
leitura endp 
        
imprimir proc 
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
imprimir endp

end main
    

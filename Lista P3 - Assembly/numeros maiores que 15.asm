title numeros maiores que 15
.model small
.stack 0100h
.data
    vetor db 1, 3, 17, 4, 18, 21, 2, 15, 20
    msg db 10, 13, "Numeros maior que 15 = $"
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 9
    xor bx, bx
    cld
    lea di, vetor
confere:
    lodsb
    cmp al, 0Fh
    ja sim
loop confere
jmp imprime
sim:
    inc bl
loop confere
imprime:
    mov ah, 9
    lea dx, msg
    int 21h
    mov ah, 2
    mov dl, bl
    or dl, 30h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main
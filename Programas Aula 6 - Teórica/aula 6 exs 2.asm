title aula 6 exs 2
.model small
.stack 100h

.code
main proc 

    mov bl, 200
    mov bh, 10
    mov ah, 2
    mov dl, 20
    mov dh, ' '

imprime:
    mov cx, 16
linha:
    int 21h
    xchg dl, dh
    int 21h
    xchg dl, dh
    inc dl
    dec bl
    jz fim
    loop linha
    xchg dl, bh
    int 21h
    xchg dl, bh
jmp imprime

fim:
    mov ah, 4ch
    int 21h

main endp
end main
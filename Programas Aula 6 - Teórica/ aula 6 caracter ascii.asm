title aula 6 caracter ascii
.model small
.stack 100H

.code
main proc

    mov ah, 2
    mov cx, 200
    mov dl, 20

imprime:
    int 21H
    inc dl
    loop imprime

    mov ah, 4ch
    int 21H

main endp
end main
title Lab08_03.asm
.model small
.stack 100h
.code
main proc 

; zera o bx pq vai armazenar
    xor bx, bx
; funcao que le caracter
    mov ah, 1
; certifica que não tenha mais que 4 dígitos hexa
    mov cx, 4

imprime:
    int 21h
; transforma para binário
    and al, 0Fh
; compara com o CR
    cmp al, 13
    je fim
; desloca 4 para esquerda
    shl bx, 4
; coloca o dígito no LSB
    or bl, al
loop imprime

fim:
; finaliza o programa
    mov ah, 4ch
    int 21h

main endp
end main
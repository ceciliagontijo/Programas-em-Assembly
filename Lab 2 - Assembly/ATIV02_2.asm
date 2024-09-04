title soma de números
.model small
.data
    texto1 db "Digite o primeiro numero: $"
    texto2 db "Digite o segundo numero: $"
    texto3 db "A soma dos numeros eh: $"

.code
main proc

mov ax, @data
mov ds, ax

; imprime o primeiro texto e guarda em dx
mov ah, 9
lea dx, texto1
int 21h

; lê um caractere e guarda em bl
mov ah, 1
int 21h
mov bl, al

; subtrai 30h do caractere, transformando-o assim em número decimal
sub bl, 30h

; pular linha
mov ah, 2
mov dl, 10
int 21h

mov ah, 2
mov dl, 13
int 21h

; imprime o segundo texto e guarda em dx
mov ah, 9
lea dx, texto2
int 21h

; lê um caractere e guarda em bh
mov ah, 1
int 21h
mov bh, al

; subtrai 30h do caractere, transformando-o assim em número decimal
sub bh, 30h

; adiciona o numero que esta em bh no numero que esta em bl
add bl, bh

; pular linha
mov ah, 2
mov dl, 10
int 21h

mov ah, 2
mov dl, 13
int 21h

; imprime o terceiro texto e guarda em dx
mov ah, 9
lea dx, texto3
int 21h

; adiciona 30h em bl (resultado da soma), transformando assim em caractere, já que a função 2 só imprime caractere
add bl, 30h

; imprime o caractere que representa a soma
mov ah, 2
mov dl, bl
int 21h

; finaliza e retorna o controle para o sistema operacional
mov ah, 4ch
int 21h

main endp
end main
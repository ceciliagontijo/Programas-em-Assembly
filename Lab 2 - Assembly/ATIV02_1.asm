title letra maiuscula
.model small
.data
    texto1 db "Digite uma letra minuscula: $"
    texto2 db "A letra maiuscula correspondente eh: $"

.code 
main proc

mov ax, @data
mov ds, ax

; imprime o primeiro texto e guarda em dx
mov ah, 9
lea dx, texto1
int 21h

; lê um caractere
mov ah, 1
int 21h

; guarda o caractere em bl
mov bl, al

; subtrai 20h, transformando assim em maiuscula
sub bl, 20h

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

; imprime o caractere já maiúsculo
mov ah, 2
mov dl, bl
int 21h

; finaliza e retorna o comando para o sistema operacional
mov ah, 4ch
int 21h

main endp
end main
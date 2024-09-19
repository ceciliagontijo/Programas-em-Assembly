title exs 3
.model small
.stack 100h

.code
main proc

; inicializa o contador com 26 (quantidade de letras)
mov cx, 26
; funcao de imprimir caractere
mov ah, 2
; atribui à dl a primeira letra
mov dl, 'A'

maius:
int 21h
; aumenta uma letra a cada loop
inc dl
; volta para maius enquanto cx for diferente de 0
loop maius

; pula uma linha
mov dl, 10
int 21h
; atribui novamente 26 ao contador para imprimir letras minusculas
mov cx, 26
; atribui a primeira letra minuscula
mov dl, 'a'

mini:
int 21h
; pula para a proxima letra
inc dl
; realiza o loop enquanto cx for diferente de 0
loop mini

; finaliza o programa
mov ah, 4ch
int 21h

main endp
end main
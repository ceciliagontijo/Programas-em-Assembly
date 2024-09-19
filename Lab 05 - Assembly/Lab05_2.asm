title exs 2
.model small
.stack 100h

.code
main proc

; atribui 10 ao bh (sera utilizado posteriormente para pular uma linha)
mov bh, 10
; atribui 50 ao contador (quantidade de vezes que deseja imprimir os astericos)
mov cx, 50
; funcao de imprimir caractere
mov ah, 2
; atribui o asterisco a dl
mov dl, '*'

imprime1: 
int 21h
; imprime enquanto cx nao for 0
loop imprime1

; atribui novamente 50 ao contador para o proximo loop
mov cx, 50

imprime2:
; atribui bh para dl e dl para bh
xchg dl, bh
; imprime dl, no caso 10 (pula uma linha)
int 21h
; trocam novamente os valores iniciais, voltando os asteriscos à dl
xchg dl, bh
int 21h
; retorna para o loop enquanto cx nao for 0
loop imprime2

; finaliza o programa
mov ah, 4ch
int 21h

main endp
end main
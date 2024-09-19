title exs 1
.model small
.stack 100h

.code
main proc

; atribui 10 ao bh (sera utilizado posteriormente para pular uma linha)
mov bh, 10
; atribui 50 ao contador (quantidade de vezes que deseja imprimir os astericos)
mov cx, 50
; funcao que imprime caractere
mov ah, 2
; atribui o asterisco para dl
mov dl, '*'

imprime1: 
int 21h
; subtrai um de cx a cada loop
dec cx
; retorna para a funcao enquanto cx for diferente de 0
jnz imprime1

; atribui novamente 50 ao contador, ja que estava zerado apos a primeira funcao
mov cx, 50

imprime2:
; atribui bh para dl e dl para bh para guardar o valor de dl e conseguir pular uma linha
xchg dl, bh
; imprime dl, no caso 10 (pula uma linha)
int 21h
; trocam novamente os valores iniciais, voltando os asteriscos à dl
xchg dl, bh
int 21h
; subtrai 1 de cx a cada loop
dec cx
; retorna para a funcao enquanto cx estiver diferente de 0
jnz imprime2

; finaliza o programa
mov ah, 4ch
int 21h

main endp
end main
title Lab05_03.ASM
.model small
.stack 100h

.code
main proc
; atribui 10 ao bh (sera utilizado posteriormente para pular uma linha)
    mov bh,10
; atribui 26 ao contador bl (quantidade de letras)
    mov bl, 26
; funcao que le caracteres
    mov ah, 2
; atribui a primeira letra a dl
    mov dl, 'a'

imprime:
; atribui 4 ao segundo contador (quantidade de letras por linha)
    mov cx, 4
quatro:
; imprime letra
    int 21h
; pula para a proxima letra
    inc dl
; tira um do contador de letras gerais
    dec bl
; pula para o fim caso o contador bl seja 0 (todas as letras estiverem impressas)
    jz fim
; volta para a funcao quatro enquanto cx nao for 0
loop quatro
; atribui bh para dl e dl para bh para guardar o valor de dl e conseguir pular uma linha
    xchg dl, bh
; imprime dl, no caso 10 (pula uma linha)
    int 21h
; trocam novamente os valores iniciais, voltando os asteriscos à dl
    xchg dl, bh
; salta incondicionalmente para a funcao imprime
    jmp imprime
fim:
; finaliza o programa
    mov ah, 4ch
    int 21h
    main endp
    end main
title Lab07_01.asm
.model small
.data
    msg1 db 10, 13, 'Dividendo: $'
    msg2 db 10, 13, 'Divisor: $'
    msg3 db 10, 13, 'Quociente: $'
    msg4 db 10, 13, 'Resto: $'

.code
main proc
        ; localiza as variáveis na memória
           mov ax, @data
           mov ds, ax
        ; funcao que imprime string
           mov ah, 9
           lea dx, msg1
           int 21h
        ; funcao que le caracter
           mov ah, 1
           int 21H
        ; salva o caracter lido em bl
           mov bl, al
        ; transforma o caracter em número
           and bl, 0Fh
        ; imprime a segunda mensagem
           mov ah, 9
           lea dx, msg2
           int 21H
        ; le o segundo caracter
           mov ah, 1
           int 21H
        ; salva em bh
           mov bh, al
        ; transforma em número
           and bh, 0Fh
        ; zera o registrador cl
           xor cl, cl

    divide:
        ; compara o dividendo com o divisor
           cmp bl, bh
        ; se for menor, pula para o fim
           jb  fim
        ; se nao, subtrai
           sub bl, bh
        ; incrementa um em cl
           inc cl
        ; volta para divide
           jmp divide

    fim:   
        ; imprime a terceira mensagem
           mov ah, 9
           lea dx, msg3
           int 21h
        ; funcao que imprime caracter
           mov ah, 2
        ; move o quociente salvo em cl para dl para ser impresso
           mov dl, cl
        ; transforma em caracter para ser lido
           or dl, 30h
           int 21H
        ; imprime a quarta mensagem
           mov ah, 9
           lea dx, msg4
           int 21h
        ; imprime o segundo caracter
           mov ah, 2
        ; transfere para bl para ser impresso
           mov dl, bl
        ; transforma para caracter para ser lido
           or  dl, 30h
           int 21H
        ; finaliza o programa
           mov ah, 4ch
           int 21H

main endp
end main

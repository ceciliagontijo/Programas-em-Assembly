title Lab07_02.asm
.model small
.stack 100H
.data
    msg1 db 10, 13, 'Multiplicando: $'
    msg2 db 10, 13, 'Multiplicador: $'
    msg3 db 10, 13, 'Produto: $'
.code
main proc 
    ; localiza as variáveis na memória
    mov ax, @data
    mov ds, ax
    ; imprime a primeria mensagem
    mov ah, 9
    lea dx, msg1
    int 21h 
    ; le o caracter que vai ser o multiplicando
    mov ah, 1
    int 21H
    ; transforma em numero
    and al, 0FH
    ; salva em bl
    mov bl, al
    ; le a segunda mensagem
    mov ah, 9
    lea dx, msg2
    int 21h
    ; le o segundo caracter que vai ser o multiplicador
    mov ah, 1
    int 21H
    ; transforma em numero
    and al, 0FH
    ; guarda em bh
    mov bh, al
    ; zera o registrador cl, que vai guardar o resultado
    xor cl, cl

multiplica:
    ; adiciona o multiplicando em cl
    add cl, bl
    ; decrementa um do multiplicador
    dec bh
    ; se for diferente de zero volta para o loop
    jnz multiplica

    ;imprime a terceira mensagem
    mov ah, 9
    lea dx, msg3
    int 21h
    ; imprime caracter
    mov ah, 2
    ; move o que está em cl (produto) para dl para ser impresso
    mov dl, cl
    ; transforma em caracter novamente para ser impresso
    or dl, 30h
    int 21H
    ; finaliza o programa
    mov ah, 4ch
    int 21H

main endp
end main
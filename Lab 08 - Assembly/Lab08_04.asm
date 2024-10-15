title Lab08_04.asm
.model small
.stack 100h
.code
main proc 
; atribui a bx algum valor numérico
    mov bx, 32
; atribui 4 ao contador
    mov cx, 4
; funcao que imprime caracter
    mov ah, 2

imprime:
; move bh (os dois primeiros dígitos para dl)
    mov dl, bh
; desloca o dl 4 para direita, para ficar apenas o primeiro dígito (os 4 bits mais significativos de BX)
    shr dl, 4
; comparacao para ver se é número ou letra
    cmp dl, 10
    jbe numero 
; transforma letra para caracter
    add dl, 37h
; imprime
    int 21h
; rotaciona bx para esquerda, para imprimir o próximo dígito
    rol bx, 4
loop imprime
jmp fim

numero:
; transforma número em caracter para ser impresso
    or dl, 30h
    int 21h
; rotaciona bx para esquerda, para imprimir o próximo dígito
    rol bx, 4
loop imprime

fim: 
; finaliza o programa
    mov ah, 4ch
    int 21h

main endp
end main
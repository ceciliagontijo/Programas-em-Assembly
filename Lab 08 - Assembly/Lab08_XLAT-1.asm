title Lab08_04.asm
.model small
.stack 100h
.data
    vet db 30h, 31h, 32h, 33h, 34h, 35h, 36h, 37h, 38h, 39h, 41h, 42h, 43h, 44h, 45h, 46h
.code
main proc 
    mov ax, @data
    mov ds, ax
; atribui a bx algum valor numérico
    mov bx, 10
; atribui 4 ao contador
    mov cx, 4
; funcao que imprime caracter
    mov ah, 2


imprime:
; move bh (os dois primeiros dígitos para dl)
    mov dl, bh
; troca os valores de bx com si, para atribuir 0 ao bx
    xchg bx, si
; bx aponta para o primeiro endereço do vetor (precisa ser necessariamente o bx)
    lea bx, vet
; desloca o dl 4 para direita, para ficar apenas o primeiro dígito (os 4 bits mais significativos de BX)
    shr dl, 4
; move o que está em dl para al (tem que ser al para usar o xlat)
    mov al, dl
; realiza o xlat ([bx+ax])
    xlat
; imprime o que está salvo em al
    mov dl,al
    int 21h
; retorna o valor inicial de bx
    xchg bx, si
; rotaciona bx para esquerda, para imprimir o próximo dígito
    rol bx, 4
loop imprime

fim: 
; finaliza o programa
    mov ah, 4ch
    int 21h

main endp
end main
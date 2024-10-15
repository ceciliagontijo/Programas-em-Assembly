title Lab08_2.asm
.model small
.stack 100h
.code
main proc 

; atribui um valor numero à bx
    mov bx, 122
; pula uma linha
    mov ah, 2
    mov dl, 10
    int 21h
; atribui 16 ao cx (contador de bits)
    mov cx, 16

imprime:
; rotação de bx para esquerda
    rol bx, 1
; confere se CF  é igual a 1 (MSB de BX está em CF)
    jc um
; se não for, imprime 0
    mov ah, 2
    mov dl, 0
; transforma o número em caracter para ser lido
    or dl, 30h
    int 21h
; decrementa cx e volta para imprime até cx ser 0
loop imprime
; pula para o fim
jmp fim

um:
; imprime 1
    mov ah, 2
    mov dl, 1
; transforma o número em caracter para ser lido
    or dl, 30h
    int 21h
; decrementa cx e volta para imprime até cx ser 0
loop imprime

fim:
; finaliza o programa
    mov ah, 4ch
    int 21h

main endp
end main
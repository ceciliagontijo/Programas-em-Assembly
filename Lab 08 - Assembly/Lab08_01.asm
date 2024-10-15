title Lab08_01.asm
.model small
.stack 100h

.code
main proc 
; zera bx (vai armazenar o número binário lido)
    xor bx, bx
; funcao que le caracter
    mov ah, 1

testa:
    int 21h
; compara com o CR
    cmp al, 13
; se for igual, pula pro fim
    je fim
; transforma o caracter lido em 
    and al, 0Fh
; move um para esquerda (abre espaço para próximo dígito)
    shl bx, 1
; coloca o dígito lido no LSB de BX
    or bl, al
; volta para o loop
    jmp testa

fim:
; finaliza o programa
    mov ah, 4ch
    int 21h

main endp
end main
title ativ3.1
.model small
.stack 100h
.data
    msg1 db "Digite um caractere: $"
    sim db 10, 13, "O caractere eh um numero$"
    nao db 10, 13, "O caractere nao eh o numero$"

.code
main proc 
; Permite o acesso às variáveis definidas em .DATA
mov ax, @data
mov ds, ax

; Exibe na tela a string MSG1 (“Digite um caractere: ”)
mov ah, 9
mov dx, offset msg1
int 21h

; Lê um caractere do teclado e salva o caractere lido em AL
mov ah, 1
int 21h
; Copia o caractere lido para BL
mov bl, al

; Compara o caractere em BL com o valor 48 (código ASCII do caracter “0”)
cmp bl, 48
; Se o caractere em BL for menor que 48 (“0”), salta para o rótulo NAOENUMERO
jb naoeh

; Compara o caractere em BL com o valor 57 (código ASCII do caracter “9”)
cmp bl, 57
; Se o caractere em BL for maior que 57 (“9”), salta para o rótulo NAOENUMERO
ja naoeh

; Se chegou até aqui, exibe na tela dizendo que o caracter é um número
mov ah, 9
mov dx, offset sim
int 21h

; Salta para o rótulo FIM
jmp fim

; Define o rótulo NAOENUMERO
naoeh:
; Exibe na tela dizendo que o caractere não é um número
mov ah, 9
mov dx, offset nao
int 21h

; Define o rótulo FIM
fim:
; Finaliza o programa
mov ah, 4ch
int 21h

main endp
end main 
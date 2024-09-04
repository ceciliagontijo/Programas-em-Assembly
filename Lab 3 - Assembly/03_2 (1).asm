title rotulos
.model small
.stack 100h
.data
    texto db "digite um carctere: $"
    num db 10, 13, "eh um numero$"
    let db 10, 13, "eh uma letra$"
    desc db 10, 13, "caractere desconhecido$"

.code
main proc

; guarda nos registradores o endereço das variáveis definidas em data
mov ax, @data
mov ds, ax

; imprime o primeiro texto
mov ah, 9
mov dx, offset texto
int 21h

; pede ao usuário um caractere e salva em bl
mov ah, 1
int 21h
mov bl, al

; compara  o caractere com 48
cmp bl, 48
; se for menor, salto condicional para o rótulo desconhecido
jb desconhecido
; compara  o caractere com 57
cmp bl, 57
; se for menor ou igual, salto condicional para o rótulo número
jbe numero
; compara  o caractere com 65
cmp bl, 65
; se for menor, salto condicional para o rótulo desconhecido
jb desconhecido
; compara  o caractere com 90
cmp bl, 90
; se for menor ou igual, salto condicional para o rótulo letra
jbe letra
; compara  o caractere com 97
cmp bl, 97
; se for menor, salto condicional para o rótulo desconhecido
jb desconhecido
; compara  o caractere com 122
cmp bl, 122
; se for menor ou igual, salto condicional para o rótulo letra
jbe letra

;rótulo caso o caractere seja desconhecido
desconhecido:
    mov ah, 9
    mov dx, offset desc
    int 21h
; pula para o fim para encerrar o programa
jmp fim

;rótulo caso o caractere seja um número
numero:
    mov ah, 9
    mov dx, offset num
    int 21h
; pula para o fim para encerrar o programa
jmp fim

; rótulo caso o caractere seja uma letra
letra:
    mov ah, 9
    mov dx, offset let
    int 21h

; rótulo para encerrar o programa 
fim:
    mov ah, 4ch
    int 21h

main endp
end main
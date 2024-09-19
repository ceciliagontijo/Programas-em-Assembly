title Lab_05.ASM
.model small

.code
main proc

; zera bl, onde sera armazenado a soma
xor bl, bl
; funcao de le caracter
mov ah, 1
; atribui 5 ao contador (quantidade de números que deseja ler)
mov cx, 5

soma:
; le caracter
int 21h
; transforma o caracter lido em decimal
sub al, 30h
; soma o caracter lido 
add bl, al
; realiza enquanto cx nao for 0
loop soma

; pula uma linha
mov ah, 2
mov dl, 10
int 21h

; passa a soma para dl para ser impresso
mov dl, bl
; transforma a soma em caracter
add dl, 30h
; imprime a soma
int 21h

; finaliza o programa
mov ah, 4ch
int 21h

main endp
end main
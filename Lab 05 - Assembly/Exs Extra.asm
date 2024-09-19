title exs 4
.model small

.code 
main proc 

mov cx, 4

leitura:
mov ah, 1
int 21h
mov bl, al

cmp bl, 65
je asterisco
cmp bl, 97
je asterisco

mov ah, 2
mov dl, 10
int 21h

mov ah, 2
mov dl, bl
int 21h
jmp contador

asterisco:
mov ah, 2
mov dl, 10
int 21h
mov ah, 2
mov dl, '*'
int 21h

contador:
mov ah, 2
mov dl, 10
int 21h
dec cx
jnz leitura

fim:
mov ah, 4ch
int 21h

main endp
end main

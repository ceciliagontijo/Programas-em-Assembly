title exs 4
.model small

.code 
main proc 

mov cx, 4

leitura:
mov ah, 1
int 21h
mov bl, al

cmp bl, 'a'
je asterisco
cmp bl, 'A'
je asterisco

mov ah, 2
mov dl, 10
int 21h

mov ah, 2
mov dl, bl
int 21h
mov dl, 10
int 21h
loop leitura
jmp fim

asterisco:
mov ah, 2
mov dl, 10
int 21h
mov ah, 2
mov dl, '*'
int 21h
mov dl, 10
int 21h
loop leitura

fim:
mov ah, 4ch
int 21h

main endp
end main

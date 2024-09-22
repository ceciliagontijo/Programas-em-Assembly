title aula 6 - soma sucessiva
.model small
.stack 100H
.code
main proc 

mov ah, 1
int 21H
sub al, 30h
mov bl, al

mov ah, 2
mov dl, ' '
int 21H
mov dl, 'X'
int 21H
mov dl, ' '
int 21H

mov ah, 1
int 21H
sub al, 30h
mov bh, al
xor cl, cl

multiplica:
add cl, bl
dec bh
jnz multiplica

mov ah, 2
mov dl, ' '
int 21H
mov dl, '='
int 21h
mov dl, ' '
int 21H
mov dl, cl
add dl, 30h
int 21H

mov ah, 4ch
int 21H

main endp
end main
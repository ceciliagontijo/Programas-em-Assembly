title aula 6 exs 6 - divisao sucessiva
.model small
.stack 100H
.data
msg1 db 10, 13, 'Divisor: $'
msg2 db 10, 13, 'Dividendo: $'
msg3 db 10, 13, 'Quociente: $'
msg4 db 10, 13, 'Resto: $'
.code
main proc 

mov ax, @data
mov ds, ax

mov ah, 9
lea dx, msg1
int 21h 
mov ah, 1
int 21H
mov bl, al
sub bl, 30h
mov ah, 9
lea dx, msg2
int 21H
mov ah, 1
int 21H
mov bh, al
sub bh, 30h
xor cl, cl

divide:
sub bl, bh
inc cl
cmp bl, bh
jae divide

mov ah, 9
lea dx, msg3
int 21h
mov ah, 2
mov dl, cl
add dl, 30h
int 21H
mov ah, 9
lea dx, msg4
int 21h
mov ah, 2
mov dl, bl
add dl, 30h
int 21H

mov ah, 4ch
int 21H

main endp
end main
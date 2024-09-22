title exs 1 aula 6
.model small
.stack 100h

.code
main proc 

mov ah, 2
mov dl, '?'
int 21h

mov ah, 2
mov dl, 10
int 21h
mov ah, 1
int 21h
mov bl, al
int 21h
mov bh, al 

cmp bl, bh
ja maior

mov ah, 2
mov dl, 10
int 21h
mov dl, bl
int 21h
mov dl, bh
int 21h
jmp fim

maior:
mov ah, 2
mov dl, 10
int 21h
mov dl, bh
int 21h
mov dl, bl
int 21h

fim: 
mov ah, 4ch
int 21h

main endp
end main
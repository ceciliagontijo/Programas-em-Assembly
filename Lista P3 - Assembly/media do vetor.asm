title media do vetor
.model small 
.stack 0100h
.data 
    vetor db 15 dup(?)
    msg db 10, 13, 'Vetor = $'
    msg2 db 10, 13, 'Media = $'
.code
main proc 
    mov ax, @data
    mov ds, ax

    xor bx, bx
    xor dx, dx
    mov ah, 1
leitura:
    int 21h
    and al, 0Fh
    cmp al, 13
    je pre
    mov vetor[bx], al
    inc dx
    inc bx 
jmp leitura

pre:
    xor ax, ax
    xor bx, bx
    mov cx, dx
soma:
    add al, vetor[bx]
    inc bx
loop soma 

    mov bx, dx
    xor dx, dx
    div bx
    push ax

    mov ah, 9
    lea dx, msg
    int 21h
    mov ah, 2
    mov cx, bx
    xor bx, bx
imprime:
    mov dl, vetor[bx]
    or dl, 30h
    int 21h
    inc bx
loop imprime
    
    mov ah, 9
    lea dx, msg2
    int 21h
    mov ah, 2
    pop dx
    or dl, 30h
    int 21h

    mov ah, 4ch
    int 21h

main endp
end main



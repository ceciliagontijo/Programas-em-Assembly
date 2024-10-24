title soma dos elementos
.model small
.stack 0100h
.data
    vetor db 8 dup (?)
    msg db 10, 13, 'Soma = $'
.code
main proc 
    mov ax, @data
    mov ds, ax

    mov cx, 8
    call leitura
    mov cx, 8
    call soma

    push dx
    mov ah, 9
    lea dx, msg
    int 21h
    mov ah, 2
    pop dx
    or dl, 30h
    int 21h
    
    mov ah, 4ch
    int 21h
main endp

leitura proc
    lea bx, vetor
    mov ah, 1
ler:
    int 21h
    mov [bx], al
    inc bx
loop ler
ret
leitura endp

soma proc 
    xor dx, dx
somar:
    mov al, dh
    lea bx, vetor
    xlat
    add dl, al
    inc dh
loop somar
ret
soma endp

end main

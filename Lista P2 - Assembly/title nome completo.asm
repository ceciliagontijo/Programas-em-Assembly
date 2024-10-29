title nome completo
.model small
.stack 0100h
.data
    vetor db 20 dup (?)
    nome db 'Nome = $'
    inicial db 'Iniciais = $'
.code
main proc 
    mov ax, @data
    mov ds, ax

    mov ah, 9
    lea dx, nome
    int 21h

    call leitura

    call impressao

    mov ah, 4ch
    int 21h

main endp

leitura proc
    xor cx, cx
    xor bx, bx
    mov ah, 1
ler:
    int 21h
    cmp al, 13
    je final
    mov vetor[bx], al
    inc bx
    inc cx
jmp ler
final:
    ret
leitura endp

impressao proc
    mov ah, 9
    lea dx, inicial
    int 21h
    xor bx, bx
    mov ah, 2
    mov dl, vetor[bx]
    int 21h
imprime:
    mov al, vetor[bx]
    cmp al, ' '
    je ini
    inc bx
loop imprime
jmp fim
ini:
    inc bx
    mov dl, vetor[bx]
    int 21h
loop imprime
fim:
    ret
impressao endp
end main
    
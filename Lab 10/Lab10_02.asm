title Lab10_02
.model small
.stack 0100h
.data
    mat db 4 dup(?)
        db 4 dup(?)
        db 4 dup(?)
        db 4 dup(?)
    msg db 10, 13, 'Soma = $'
.code
main proc 
    mov ax, @data
    mov ds, ax

    mov di, 4
    call leitura
    mov di, 4
    call soma
    mov dh, 4
    call impressao


    mov ah, 4ch
    int 21h
main endp

leitura proc
    xor bx, bx
    mov ah, 1
l1:
    mov cx, 4
    xor si, si
l2:
    int 21h
    and al, 0Fh
    cmp al, 6
    ja repete
    cmp al, 0
    jb repete
    mov mat[bx][si], al
    inc si
loop l2
    add bx, 4
    dec di
jnz l1
    jmp fim
repete:
    jmp l2
fim:
    ret
leitura endp

soma proc
    xor bx, bx
    xor ax, ax
conta:
    mov cx, 4
    xor si, si
conta2:
    add al, mat[bx][si]
    inc si
loop conta2
    add bx, 4
    dec di
jnz conta
    ret
soma endp

impressao proc
    xchg ax, di
    xor bx, bx
    mov ah, 2
p1:
    mov dl, 10
    int 21h
    mov cx, 4
    xor si, si
p2:
    mov dl, mat[bx][si]
    or dl, 30h
    int 21h
    inc si
loop p2
    add bx, 4
    dec dh
jnz p1

    mov ah, 9
    lea dx, msg
    int 21h
    mov bx, 10
    xchg ax, di
divi:
    xor dx, dx
    div bx
    push dx
    inc cx
    cmp ax, 0
    je final
jmp divi
final:
    mov ah, 2
    pop dx
    or dl, 30h
    int 21h
loop final
    ret
impressao endp
end main
title projeto1
.model small
.stack 0100h
pula_linha MACRO        
    push ax
    push dx
    mov ah,02
    mov dl,10
    int 21h
    pop dx
    pop ax
ENDM
resultado macro numero
    push ax
    push dx
    mov ah, 9
    lea dx, numero
    int 21h
    pop dx
    pop ax
ENDM
.data
     matriz db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0  
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

      tiros db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    
    .linha db 10, 13, 'Informe a linha desejada para atirar: (0/19)$'
    .coluna db 10, 13, 'Informe a coluna desejada para atirar: (0/19)$'
    novamente db 10, 13, 'Esse valor eh invalido, digite novamente: $'
    encou db 10, 13, 'Voce acertou um encouracado!!!$'
    frag db 10, 13, 'Voce acertou uma fragata!!!$'
    subma db 10, 13, 'Voce acertou um submarino!!!$'
    hidro db 10, 13, 'Voce acertou um hidroaviao!!!$'
    errou db 10, 13, 'Voce nao acertou nenhuma embarcacao!!!$'
    continua db 10, 13, 'Deseja atirar novamente? (s/n)$'
    @um db 10, 13, 'Voce eliminou a embarcacao de encouracado.$'
    @dois db 10, 13, 'Voce eliminou a embarcacao de fragata.$'
    @tres db 10, 13, 'Voce eliminou uma embarcacao de submarino.$'
    @quatro db 10, 13, 'Voce eliminou uma embarcacao de hidroaviao.$'
    acerto db 6 dup (0)

.code
main proc 

    mov ax, @data
    mov ds, ax
jogo:
    mov ah, 9
    lea dx, .linha          ;entrada decimal das linhas 
    int 21h
    xor bx, bx
linha:
    mov ax, 10               
    mul bx
    push ax
    mov ah,1
    int 21h
    and al, 0Fh
    cmp al, 13
    je confere_linha
    xor ah, ah
    pop bx
    add bx, ax
jmp linha
confere_linha:
    cmp bx, 19
    jbe sai
    mov ah, 9
    lea dx, novamente
    int 21h
    xor bx, bx
    jmp linha
sai:
    mov ax, 20
    mul bx
    mov bx, ax
    push bx
    mov ah, 9
    lea dx, .coluna             ;entrada decimal das colunas 
    int 21h
    xor bx,bx

coluna:
    mov ax, 10
    mul bx
    push ax
    mov ah,1
    int 21h
    and al, 0Fh
    cmp al, 13
    je confere_coluna
    xor ah, ah
    pop bx
    add bx, ax
jmp coluna
confere_coluna:
    cmp bx, 19
    jbe sai2
    mov ah, 9
    lea dx, novamente
    int 21h
    xor bx, bx
    jmp coluna
sai2:
    mov si, bx                  
    pop ax
    pop bx
    mov ch, matriz[bx][si]          ;movendo para al para comparar o numero 
    cmp ch, 1 
    je um1
    cmp ch, 2
    je dois2
    cmp ch, 3
    je tres3
    cmp ch, 4
    je quatro4
    cmp ch, 5
    je cinco5
    cmp ch, 6
    je seis6
    call error
    jmp saida
um1:     
    call um
    cmp cl, 4
    jne saida
    resultado @um
    jmp saida
dois2:
    call dois
    cmp cl, 3
    jne saida
    resultado @dois
    jmp saida
tres3:
    call tres
    cmp cl, 2
    jne saida
    resultado @tres
    jmp saida
quatro4:
    call quatro
    cmp cl, 4
    jne saida
    resultado @tres
    jmp saida
cinco5:
    call cinco
    cmp cl, 4
    jne saida
    resultado @quatro
    jmp saida
seis6:
    call seis
    cmp cl, 4
    jne saida
    resultado @quatro
  
saida:
    pula_linha
    xor bx, bx
    mov di, 20
l1:
    xor si, si
    mov cx, 20
l2:
    mov ah, 2
    mov dl, tiros[bx][si]
    or dl, 30h
    int 21h
    inc si
loop l2
    pula_linha
    add bx, 20
    dec di
jnz l1
continuar:
    mov ah, 9
    lea dx, continua        ;verifica se quer continuar o programa 
    int 21h
    mov ah, 1
    int 21h
    cmp al, 's'
    je segue
    jmp fim
segue:
    jmp jogo
fim:
    pula_linha
    xor bx, bx
    mov di, 20
f1:
    xor si, si
    mov cx, 20
f2:
    mov ah, 2
    mov dl, tiros[bx][si]
    or dl, 30h
    int 21h
    inc si
loop f2
    pula_linha
    add bx, 20
    dec di
jnz f1
    mov ah, 4ch
    int 21h
main endp

um proc
    mov tiros[bx][si], 1
    mov ah, 9
    lea dx, encou
    int 21h
    xor di, di
    inc acerto[di]
    mov cl, acerto[di]
    ret
um endp
dois proc 
    mov tiros[bx][si], 2
    mov ah, 9
    lea dx, frag
    int 21h
    mov di, 1
    inc acerto[di]
    mov cl, acerto[di]
    ret
dois endp
tres proc
    mov tiros[bx][si], 3
    mov ah, 9
    lea dx, subma
    int 21h
    mov di, 2
    inc acerto[di]
    mov cl, acerto[di]
    ret
tres endp
quatro proc 
    mov tiros[bx][si], 4
    mov ah, 9
    lea dx, subma
    int 21h
    mov di, 3
    inc acerto[di]
    mov cl, acerto[di]
    ret
quatro endp
cinco proc
    mov tiros[bx][si], 5
    mov ah, 9
    lea dx, hidro
    int 21h
    mov di, 4
    inc acerto[di]
    mov cl, acerto[di]
    ret
cinco endp
seis proc 
    mov tiros[bx][si], 6
    mov ah, 9
    lea dx, hidro
    int 21h
    mov di, 5
    inc acerto[di]
    mov cl, acerto[di]
    ret 
seis endp
error proc
    mov ah, 9                       ;se nao move x 
    lea dx, errou
    int 21h
    mov tiros[bx][si], 'X'
    ret
error endp
end main

    

;melhorar escritas e detalhes 
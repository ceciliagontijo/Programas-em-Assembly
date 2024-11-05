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
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0  
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            db  4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
    
    .linha db 10, 13, 'Informe a linha desejada para atirar: $'
    .coluna db 10, 13, 'Informe a coluna desejada para atirar: $'
    encou db 10, 13, 'Voce acertou um encouracado!!!$'
    frag db 10, 13, 'Voce acertou uma fragata!!!$'
    subma db 10, 13, 'Voce acertou um submarino!!!$'
    hidro db 10, 13, 'Voce acertou um hidroaviao!!!$'
    errou db 10, 13, 'Voce nao acertou nenhuma embarcacao!!!$'
    continua db 10, 13, 'Deseja atirar novamente? (s/n)$'

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
    je sai
    xor ah, ah
    pop bx
    add bx, ax
jmp linha
sai:
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
    je sai2
    xor ah, ah
    pop bx
    add bx, ax
jmp coluna
sai2:
    mov si, bx                  
    pop ax
    pop bx
    mov al, matriz[bx][si]          ;movendo para al para comparar o numero 
    cmp al, 1      
    je um
    cmp al, 2
    je dois
    cmp al, 3
    je tres
    cmp al, 4
    je quatro
    mov ah, 9                       ;se nao move x 
    lea dx, errou
    int 21h
    mov tiros[bx][si], 'X'
    jmp saida
um:
    mov tiros[bx][si], 1
    mov ah, 9
    lea dx, encou
    int 21h
jmp saida
dois:
    mov tiros[bx][si], 2
     mov ah, 9
    lea dx, frag
    int 21h
jmp saida
tres:
    mov tiros[bx][si], 3
     mov ah, 9
    lea dx, subma
    int 21h
jmp saida
quatro:
    mov tiros[bx][si], 4
    mov ah, 9
    lea dx, hidro
    int 21h
jmp saida
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
end main
    


;contadores para embarcacoes 
;verificar se existe linha e coluna 
;melhorar escritas e detalhes 
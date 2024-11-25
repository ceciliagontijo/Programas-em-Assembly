title Lab12_01
.model small
.stack 0100h
pula_linha macro
    push ax
    push dx
    mov ah, 2
    mov dl, 10
    int 21h
    pop dx
    pop ax
endm
.data
    string db 20 dup(?)
    vetor db 'cecilia'
    string_copia db 20 dup(?)
    msg_sim db 'Strings iguais$'
    msg_nao db 'Strings diferentes$'
    quantidade db 10, 13, 'Quantidade de a = $'

.code
main proc 
    mov ax, @data
    mov ds, ax
    mov es, ax

    call leitura
    call copia
    call compara
    call verifica
    
    mov ah, 4ch
    int 21h
main endp
leitura proc
    xor bx, bx
    mov ah, 1
ler:
    int 21h
    cmp al, 13   ; le a string ate digitar o CR
    je pre_impressao
    mov string[bx], al     ; move para a string
    inc bx
jmp ler
pre_impressao:
    mov cx, bx        ; move o tamanho da string para cx para ser impresso
    xor bx,bx
    mov ah, 2
impressao:
    mov dl, string[bx]    ; imprime string
    int 21h
    inc bx          ; recupera o tamanho da string
loop impressao
    ret
leitura endp
copia proc
    lea si, string
    lea di, string_copia
    cld
    mov cx,bx
    rep movsb          ; move a string origem para a string destino ate cx ser 0
    mov cx,bx 
    xor bx, bx
    pula_linha
    mov ah,2
imprime_copia:
    mov dl, string_copia[bx]     ;imprime a string que foi copiada
    int 21h
    inc bx
loop imprime_copia
    ret
copia endp
compara proc
    lea si, string
    lea di, vetor
    cld
    pula_linha
    mov cx, bx  ; bx armazena o tamanho da string
    repe cmpsb
    jz sim    ; zf=1 mas o resultado eh igual a 0, ou seja, igual
    mov ah, 9
    lea dx, msg_nao   ;se nao, strings diferentes
    int 21h
    jmp saida
sim:
    mov ah, 9
    lea dx, msg_sim
    int 21h
saida:
    ret
compara endp
verifica proc
    lea si, string
    cld
    mov cx, bx
    xor bh, bh  ;vai armazenar quantidades de a
verifica_a:
    lodsb ; manda o elemento da string para al
    cmp al, 'a'  ;compara com a
    je igual
loop verifica_a
    jmp saida_verifica
igual:
    inc bh  ;se for igual a 'a', incrementa bh
loop verifica_a
saida_verifica:
    mov ah, 9
    lea dx, quantidade
    int 21h
    mov ah, 2
    mov dl, bh  ; imprime a quantidade de As
    or dl, 30h
    int 21h
    ret
verifica endp
end main

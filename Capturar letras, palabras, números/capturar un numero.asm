capturar_numero macro
    mov ah, 1
    int 21h
    sub al, '0'
    mov ah, 0
    mov bl, 10
    
capturar_numero_loop:
    int 21h
    cmp al, 13
    
je capturar_numero_fin
    sub al, '0'
    mul bl
    add ah, al
    
jmp capturar_numero_loop
capturar_numero_fin:
endm
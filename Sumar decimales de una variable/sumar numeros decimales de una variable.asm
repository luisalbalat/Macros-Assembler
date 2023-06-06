.model small
.stack 100h
.data
NUM db 13,4,7,4,6,8,1,5,6,7,8,9,0,8
num_elementos dw 13
.code
main proc
    mov ax, @data
    mov ds. ax
    
    call sumar_numeros
    
    mov ah, 4ch
    int 21h
main endp

sumar_numeros proc
    xor ax, ax
    mov cx, num_elementos
    mov si, offset NUM
    inc si 
sumar_numeros_loop:
    mov al, [si]
    add ax, bx
    inc si
.model small
.stack 100h
.data
nombre db "Juan", 0
.code 
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, nombre
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main
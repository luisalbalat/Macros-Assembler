capturar_palabra macro
    mov ah, 0ah
    lea dx, palabra
    int 21h
endm
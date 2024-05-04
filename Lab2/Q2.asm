.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 10
    mov dl, '0'
    loop1:
        mov ah, 02h
        int 21h
        
        inc dl
        loop loop1
    
    mov ah, 4ch
    int 21h
main endp
end main

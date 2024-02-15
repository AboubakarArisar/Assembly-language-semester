.model small
.stack 100h
.data
var1 db 'Enter the range <1 to 9> : $'
var2 db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov dx, offset var1
    mov ah, 9
    int 21h
    mov ah, 1
    int 21h
    sub al, 30h
    mov var2, al

    mov cx, 1
    mov cl, var2
    
    loop1:
        mov dl, '0'
        add dl, cl
        mov ah, 2h
        int 21h
        
        inc cx
        cmp cx, var2
        jle loop1
    
    mov ah, 4ch
    int 21h
main endp
end main

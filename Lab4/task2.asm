.model small
.stack 100h
.data
str db '*'
.code
main proc
    mov ax, @data
    mov ds, ax
    mov cx, 5
   
loop1:
    PUSH cx
    mov cx, 10
loop2:
    mov ah, 2
    mov dl, str
    int 21h  
    loop loop2

    mov ah, 2
    mov dl, 10
    int 21h 
    mov dl, 13
    int 21h

    POP cx
    loop loop1

    mov ah, 4ch
    int 21h
main endp
end main

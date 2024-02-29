.model small
.stack 100h
.data
iter db 'Outer loop : $'
counter db '1'
num db '0'
.code
main proc
    mov ax, @data
    mov ds, ax
    mov cx, 5
   
loop1:
    PUSH cx
    mov ah,9
    lea dx,iter
    int 21h
    mov ah,2
    mov dl,counter
    inc counter
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h 
    mov dl, 13
    int 21h
    mov cx, 10
    mov num,'0'
loop2:
    mov ah, 2
    mov dl, num
    int 21h
    inc num   
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

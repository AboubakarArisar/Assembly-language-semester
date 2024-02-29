.model small
.stack 100h
.data

iter dw 1
val db 'A'

.code

main proc
    mov ax, @data
    mov ds, ax
    mov cx, 5
   
loop1:
    PUSH cx
    mov cx, iter
    mov val,'A'

loop2:
    mov ah, 2
    mov dl, val
    int 21h  
    inc val
    loop loop2

    mov ah, 2
    mov dl, 10
    int 21h 
    mov dl, 13
    int 21h
    inc iter
    POP cx
    loop loop1

    mov ah, 4ch
    int 21h
main endp
end main

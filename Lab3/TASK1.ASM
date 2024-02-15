.model small
.stack 100h
.data
var1 db 'Aboubakar$'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 10
    loop1:
        mov ah, 9
        lea dx, var1
        int 21h
	mov ah,2
	mov dl,10
	int 21h
	mov dl,13
	int 21h
        loop loop1
    
    mov ah, 4ch
    int 21h
main endp
end main

.model small
.stack 100h
.data
val2 db 'English alhabets in upper case : $'
val3 db 'A'
.code
main proc
mov ax,@data
mov ds,ax

mov dx, offset val2
mov ah,9
int 21h

mov cx,26
alpha:
	mov dl,val3
	mov ah,2
	int 21h
	inc val3
loop alpha
mov ah,4ch
int 21h

Main endp
end main


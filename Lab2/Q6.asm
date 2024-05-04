.model small
.stack 100h
.data

val1 db 'English alhabets in upper case : $'
val2 db 'A'
val3 db 'English alhabets in lower case : $'
val4 db 'a'
.code
main proc
mov ax,@data
mov ds,ax

mov dx, offset val1
mov ah,9
int 21h

mov cx,26
Alpha:
	mov dl,val2
	mov ah,2
	int 21h
	inc val2
loop Alpha


mov ah,2
mov dl,13
int 21h
mov dl,10
int 21h

mov dx, offset val3
mov ah,9
int 21h

mov cx,26
alphabet:
	mov dl,val4
	mov ah,2
	int 21h
	inc val4
loop alphabet

mov ah,4ch
int 21h

Main endp
end main


.model small
.stack 100h
.data
.code
main proc

mov al,2
mov bl,2

mul bl

mov ah,2
mov dx,ax
add dx,'0'
int 21h

mov ah,4ch
int 21h

main endp
end main

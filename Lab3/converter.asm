.model small
.stack 100h

.data
var1 db ?
fix1 db 65
fix2 db 122
var2 db 'Enter any Alphabet : $'
var3 db 'Converted Alphabet : $'

.code
main proc
mov ax,@data
mov ds,ax

mov ah,9
lea dx, var2
int 21h

mov ah,1
int 21h
mov bl,al

sub bl,fix1
sub fix2, bl


mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,9
lea dx, var3
int 21h


mov dl,fix2
mov ah,2
int 21h


mov ah,4ch
int 21h

main endp
end main

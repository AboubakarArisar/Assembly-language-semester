.model small
.stack 100h
.data
in1 db "Enter first number : $"
in2 db "Enter second number : $"
gr1 db " the first number is greater.$"
gr2 db " the second number is greater.$"
n1 db ?
n2 db ?
newline db 10,13,"$";
.code

funct proc
mov al,n1
cmp al,n2
jg great1
jl great2

great1:
mov ah,2
mov dl,n1
int 21h

mov ah,9
lea dx, gr1
int 21h
jmp exit

great2:
mov ah,2
mov dl,n2
int 21h

mov ah,9
lea dx, gr2
int 21h
jmp exit

exit:
ret
funct endp

main proc
mov ax,@data
mov ds,ax

mov ah,9
lea dx,in1
int 21h

mov ah,1
int 21h
mov n1,al

mov ah,9
lea dx,newline
int 21h

mov ah,9
lea dx,in2
int 21h

mov ah,1
int 21h
mov n2,al

mov ah,9
lea dx,newline
int 21h

call funct

mov ah,4ch
int 21h

main endp
end main

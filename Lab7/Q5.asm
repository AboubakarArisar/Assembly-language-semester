.model small
.stack 100h
.data
in1 db "Enter first number : $"
in2 db "Enter second number : $"
opt db "Enter operator <+ or ->: $"
res db "The result is : $"
n1 db ?
n2 db ?
op db ?
result db ?
newline db 10,13,"$"

.code

funct proc
cmp op,'+'
je addition

cmp op, '-'
je subtraction

addition:
mov bl,n1
add bl,n2
add bl,48
mov result,bl

mov ah,9
lea dx,res
int 21h

mov ah,2
mov dl,result
int 21h
jmp exit

subtraction:
mov bl,n1
sub bl,n2
add bl,48
mov result,bl

mov ah,9
lea dx,res
int 21h

mov ah,2
mov dl,result
int 21h
jmp exit


exit:
ret
funct endp

main proc
mov ax, @data
mov ds, ax

mov ah, 9
lea dx, in1
int 21h

mov ah, 1
int 21h
sub al, '0'
mov n1, al

mov ah, 9
lea dx, newline
int 21h

mov ah, 9
lea dx, in2
int 21h

mov ah, 1
int 21h
sub al, '0'
mov n2, al

mov ah, 9
lea dx, newline
int 21h

mov ah, 9
lea dx, opt
int 21h

mov ah, 1
int 21h
mov op, al

mov ah, 9
lea dx, newline
int 21h

call funct

mov ah, 4ch
int 21h

main endp
end main

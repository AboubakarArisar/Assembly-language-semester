.model small
.stack 100h

.data
    str         db 'Enter number 1: $'
    str2        db 'Enter number 2: $'
    str3        db 'Choose operator (+ or -): $'
    addition    db 'Addition is: $'
    subtraction db 'Subtraction is: $'
    n1          db 0
    n2          db 0
    res         db 0
    newline     db 10, 13, '$'

.code
main proc
         mov ax, @data
         mov ds, ax
   
         mov ah, 9h
         lea dx, str
         int 21h

         mov ah,1
         int 21h
         sub al,'0'
         mov n1,al

         mov ah,9
         lea dx,newline
         int 21h

         mov ah, 9h
         lea dx, str2
         int 21h

         mov ah,1
         int 21h
         sub al,'0'
         mov n2,al

         mov ah,9
         lea dx,newline
         int 21h

         mov ah, 9h
         lea dx, str3
         int 21h

         mov ah,1
         int 21h
         mov bl,al
         cmp bl,'+'
         je  addt
         cmp bl,'-'
         je  subt
        

    addt:
         mov al, n1
         add al, n2
         mov res, al
         
         mov ah,9h
         lea dx, newline
         int 21h
         
         mov ah, 9h
         lea dx, addition
         int 21h

         mov ah, 2
         mov dl, res
         add dl, '0'
         int 21h
         jmp exit



    subt:
         mov al, n1
         sub al, n2
         mov res, al

         mov ah,9h
         lea dx, newline
         int 21h
         
         mov ah, 9h
         lea dx, subtraction
         int 21h
         
         mov ah, 2
         mov dl, res
         add dl, '0'
         int 21h
         jmp exit
    exit:
         mov ah, 4ch
         int 21h

main endp
end main

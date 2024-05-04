    .model small
    .stack 100h
.data
    msg1 db "Enter first number: $"
    msg2 db "Enter second number: $"
    g1   db " the first number is greater$"
    g2   db " the second number is greater$"
        
.code

main proc
         mov ax, @data
         mov ds, ax

         mov ah, 9
         lea dx, msg1
         int 21h

         mov ah, 1
         int 21h
         mov bl, al
            
         mov ah,2
         mov dl, 10
         int 21h
         mov dl, 13
         int 21h

         mov ah, 9
         lea dx, msg2
         int 21h

         mov ah, 1
         int 21h

         cmp bl, al
         jg  gr1
         jl  gr2

    gr1: 
         mov ah,2
         mov dl,10
         int 21h
         mov dl,13
         int 21h

         mov dl,bl
         mov ah, 2
         int 21h
         mov ah,9
         lea dx, g1
         int 21h
         jmp exit

    gr2: 
    
         mov ah,2
         mov dl,10
         int 21h
         mov dl,13
         int 21h

         mov dl,al
         mov ah, 2
         int 21h
         mov ah, 9
         lea dx, g2
         int 21h
         jmp exit
            
    exit:
         mov ah, 4ch
         int 21h

main endp
    end main

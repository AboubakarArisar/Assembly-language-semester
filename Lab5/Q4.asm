    .model small
    .stack 100h
    .data
        msg1 db "Enter first number: $"
        msg2 db "Enter second number: $"
        msg3 db "The absolute difference is: $"
        
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
            
            
                sub bl,al
                mov ah,2
                mov dl, 10
                int 21h
                mov dl, 13
                int 21h


                mov ah, 9
                lea dx,msg3
                int 21h

                mov dl,bl
                cmp dl,0
                jge skip
                jle negative
            
            
        negative:
                neg dl
                add dl,'0'
                mov ah, 2
                int 21h
                jmp exit


        skip:    
                mov ah, 2
                mov dl, bl
                add dl, '0'
                int 21h
                jmp exit

        exit:    
                mov ah, 4ch
                int 21h

    main endp
    end main

.model small
.stack 100h
.data
    msg  db "Enter a character : $"
    msg1 db "The entered character is not A.$"
    msg2 db "The entered character is A.$"

.code
main proc
         mov ax,@data
         mov ds,ax

         mov ah,9
         lea dx,msg
         int 21h

         mov ah,1
         int 21h
          

         cmp al,'A'
         je  A
         jne notA

    notA:
         mov ah,2
         mov dl, 10
         int 21h
         mov dl, 13
         int 21h
         mov ah,9h
         lea dx,msg1
         int 21h
         jmp exit
    A:   
         mov ah,2
         mov dl, 10
         int 21h
         mov dl, 13
         int 21h
         mov ah,9h
         lea dx,msg2
         int 21h
         jmp exit

    exit:
         mov ah,4ch
         int 21h

main endp
end main

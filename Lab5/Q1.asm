.model small
.stack 100h
.data
     msg  db "Enter a character : $"
     msg1 db "The entered character is A.$"

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
          jne exit

     A:   
          mov ah,2
          int 21h
          mov dl, 10
          int 21h
          mov dl, 13
          int 21h
          mov ah,9h
          lea dx,msg1
          int 21h

     exit:
          mov ah,4ch
          int 21h



main endp
end main

.model small
.stack 100h
.data

    var  db 'Number is equal to 5$'
    var2 db 'Enter a number : $'
    var3 db 'Number is not equal to 5$'
.code
main proc
         mov ax, @data
         mov ds, ax

         mov cl,'5'

         mov ah,9
         lea dx,var2
         int 21h
         
         mov ah,1
         int 21h
         mov bl,al
         mov ah,2
         mov dl,10
         int 21h
         mov dl,13
         int 21h

         cmp bl,cl
         je  lbl
         jne lbl2

    lbl: 
         mov ah,9
         lea dx,var
         int 21h
         jmp exit
    lbl2:
    
         mov ah,9
         lea dx,var3
         int 21h

    exit:
         mov ah,4ch
         int 21h
main endp
end main        


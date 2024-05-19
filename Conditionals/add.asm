.model small
.stack 100h
.data
     var  db 'Enter number 1 : $' 
     var2 db 'Enter number 2 : $'
     var3 db 'The sum is : $'
     var4 db 'Do you want to continue?(y/n) : $'
     num1 db ?
     num2 db ?
     opt  db ?
          
.code
main proc
          mov ax,@data
          mov ds,ax

     lbl: 
          mov ah,2
          mov dl,10
          int 21h
          mov dl,13
          int 21h

          mov ah,9
          lea dx,var
          int 21h

          mov ah,1
          int 21h
          sub al, '0'
          mov num1,al

          mov ah,2
          mov dl,10
          int 21h
          mov dl,13
          int 21h

          mov ah,9
          lea dx,var2
          int 21h

          mov ah,1
          int 21h
          sub al, '0'
          mov num2,al

          mov ah,2
          mov dl,10
          int 21h
          mov dl,13
          int 21h

          mov al, num1
          add al, num2
          add al, '0'

          mov ah,9
          lea dx,var3
          int 21h

          mov ah,2
          mov dl,al
          int 21h

          mov ah,2
          mov dl,10
          int 21h
          mov dl,13
          int 21h

          mov ah,9
          lea dx,var4
          int 21h

          mov ah,1
          int 21h
          mov opt,al

          cmp opt,'y'
          je  lbl
          jne exit
            

         
     exit:
          mov ah,4ch
          int 21h
main endp
end main

.model small
.stack 100h
.data
    msg  db "The character printed using user defined procedure is: $"

.code
main proc
              mov  ax, @data
              mov  ds, ax

              mov  bl, 'A'

    
              mov  dl,bl

              call printFunc

              mov  ah,4ch
              int  21h
main endp

printFunc proc
              mov  ah, 9h
              lea  dx, msg
              int  21h
              mov  dl, bl
              mov  ah, 2
              int  21h
              ret
printFunc endp
end main 

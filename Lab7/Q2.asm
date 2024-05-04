.model small
.stack 100h
.data
    msg  db "The character using user defined procedure is: $"
    msg1 db "The character using main procedure is: $"
    line db 13,10,"$"
.code
main proc
              mov  ax, @data
              mov  ds, ax

              mov  bl, 'A'

              mov  ah,9
              lea  dx,msg1
              int  21h
              mov  dl,bl
              mov  ah,2
              int  21h

              mov  ah,9
              lea  dx,line
              int  21h

              inc  bl
              call printFunc

              mov  ah,9
              lea  dx,line
              int  21h

              inc  bl
              mov  ah,9
              lea  dx,msg1
              int  21h
              mov  dl,bl
              mov  ah,2
              int  21h

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

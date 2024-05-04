.model small
.stack 100h
.data
    msg1 db "Number displayed using user procedure are: $"
    line db 13,10,"$"
.code
main proc
              mov  ax, @data
              mov  ds, ax

              
              call printFunc

              mov  ah,4ch
              int  21h
main endp

printFunc proc
              mov  ah, 9
              lea  dx, msg1
              int  21h
              mov  bl,'0'
              
              mov  cx,10
    print:    
              mov  dl,bl
              mov  ah,2
              int  21h
              inc  bl
              loop print
              ret
printFunc endp
end main

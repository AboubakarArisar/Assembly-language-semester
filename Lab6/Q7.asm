.model small
.stack 100h

.data
    str     db 'Enter the sequence of characters : $'
    str2    db 'Sequence of characters in reverse order: $'
    
    newline db 10, 13, '$'

.code
main proc
         mov  ax, @data
         mov  ds, ax
    lbl: 
         mov  ah, 9h
         lea  dx, str
         int  21h

         mov  ah, 1
         int  21h
         mov  bl, al
         push bl
         cmp  bl, 13
         je   lbl2

         jmp  lbl

    lbl2:

         mov  ah, 9h
         lea  dx, str2
         int  21h
              
         pop  bl
         mov  ah, 2
         mov  dl, bl
         int  21h
         jmp  exit

    exit:
         mov  ah, 4ch
         int  21h

main endp
end main

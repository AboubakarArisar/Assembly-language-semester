.model small
.stack 100h

.data
    str     db 'Enter the sequence of characters : $'
    str2    db 'Number of Capital Alphabets: $'
    ct      db 0
    newline db 10, 13, '$'

.code
main proc
          mov ax, @data
          mov ds, ax

          mov ah, 9h
          lea dx, str
          int 21h

    lbl:  
          mov ah, 1
          int 21h
          mov bl, al

          cmp bl, 13
          je  lbl2
              
          cmp bl,'A'
          jle small
          cmp bl,'Z'
          jge small
              
          inc ct

    small:
          jmp lbl
    lbl2: 

          mov ah, 9h
          lea dx, str2
          int 21h

          mov ah, 2
          mov dl, ct
          add dl,48
          int 21h
          jmp exit


    exit: 
          mov ah, 4ch
          int 21h

main endp
end main

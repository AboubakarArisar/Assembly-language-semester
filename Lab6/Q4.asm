.model small
.stack 100h

.data
    str     db 'Enter the sequence of characters : $'
    str2    db 'Number of Small Characters: $'
    str3    db 'Number of large Characters: $'
    sm      db 0
    lg      db 0
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

          cmp bl,'Z'
          jle large
          cmp bl,'a'
          jge small
          jmp lbl

    lbl2: 

          mov ah, 9h
          lea dx, str2
          int 21h

          mov ah, 2
          mov dl, sm
          add dl,48
          int 21h

          mov ah, 9h
          lea dx, newline
          int 21h

          mov ah, 9h
          lea dx, str3
          int 21h

          mov ah, 2
          mov dl, lg
          add dl,48
          int 21h
          jmp exit

    small:
          inc sm
          jmp lbl

    large:
          cmp bl,' '
          je  lbl
          inc lg
          jmp lbl
    exit: 
          mov ah, 4ch
          int 21h

main endp
end main

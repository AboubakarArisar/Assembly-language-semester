.model small
.stack 100h
.data
        ct   dw 1
.code
main proc
                mov  ax,@data
                mov  ds,ax

                call pattern
                mov  ah,4ch
                int  21h

main endp

pattern proc
                mov  bl,'1'
                mov  cx,5

        l1:     
                push cx
                mov  cx,ct

        l2:     
                mov  dl,bl
                mov  ah,2
                int  21h
                loop l2

     
                mov  ah,2
                mov  dl,10
                int  21h
                mov  dl,13
                int  21h

                pop  cx
                inc  ct
                inc  bl
                loop l1

                ret
pattern endp
end main

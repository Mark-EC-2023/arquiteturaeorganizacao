.686
        .model   flat,c
        .stack   100h
        .data
a       sdword   ?
b       sdword   ?
c       sdword   ?
d       sdword   ?
        .code
main    proc      
        .if a > b ;if(a)
          dec a
        .else
          .if b >= c ;if(b)
            sub b,2
            .else
              .if c > d ; if(c)
                mov eax,c
                add eax,d
                mov c,eax
                .else
                  mov ebx,2
                  mov eax,d
                  cdq 
                  idiv ebx
                  mov d,eax
                  .endif   ;endif(c)
               .endif ;endif(b)
        .endif  ;endif(a)
        ret
main    endp
end
    

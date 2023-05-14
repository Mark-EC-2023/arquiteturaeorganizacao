        .686
        .model   flat,c
        .stack   100h
printf  PROTO	arg1:Ptr Byte, printlist:VARARG
scanf	PROTO	arg2:Ptr Byte, inputlist:VARARG
        .data
infmt   byte    "%d",0
msgfmt  byte    "%s",0Ah,
msga    byte    "Digite o valor de a eh ",0
msgb    byte    "Digite o valor de b eh ",0
msgc    byte    "Digite o valor de c eh ",0
msgd    byte    "Digite o valor de d eh ",0
msg2ft  byte    0Ah,"%s%d,%d,%d,%d",0
msg2    byte    "Os valores finais de a,b,c,d sao respectivamente: "
a       sdword   ?
b       sdword   ?
c       sdword   ?
d       sdword   ?

        .code
main    proc      
        
        INVOKE printf, ADDR msgfmt, ADDR msga
        INVOKE scanf, ADDR infmt, ADDR a
       
        INVOKE printf, ADDR msgfmt, ADDR msgb
        INVOKE scanf, ADDR infmt, ADDR b
        
        INVOKE printf, ADDR msgfmt, ADDR msgc
        INVOKE scanf, ADDR infmt, ADDR c

        INVOKE printf, ADDR msgfmt, ADDR msgd
        INVOKE scanf, ADDR infmt, ADDR d

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
        
        INVOKE printf, ADDR msg2ft, ADDR msg2, a,b,c,d
        
        
        ret
main    endp
end
    

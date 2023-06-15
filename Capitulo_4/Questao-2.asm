; Correção: 0,1. O programa não monta. Não podemos usar em diretivas duas variáveis de memória.

; Fiz no ponto de teste
; Mas tem o inicio e fim da questao indicado
       
       
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
ax       sdword   ?
bx      sdword   ?
cx      sdword   ?
dx      sdword   ?

        .code
main    proc      
        
        INVOKE printf, ADDR msgfmt, ADDR msga
        INVOKE scanf, ADDR infmt, ADDR ax
       
        INVOKE printf, ADDR msgfmt, ADDR msgb
        INVOKE scanf, ADDR infmt, ADDR bx
        
        INVOKE printf, ADDR msgfmt, ADDR msgc
        INVOKE scanf, ADDR infmt, ADDR cx

        INVOKE printf, ADDR msgfmt, ADDR msgd
        INVOKE scanf, ADDR infmt, ADDR dx


        ; INICIO DA QUESTAO
        
        .if ax > bx ;if(a)
          dec ax
        .else
          .if bx >= cx ;if(b)
            sub bx,2
            .else
              .if cx > dx ; if(c)
                mov eax,cx
                add eax,dx
                mov cx,eax
                .else
                  mov ebx,2
                  mov eax,dx
                  cdq 
                  idiv ebx
                  mov dx,eax
                  .endif   ;endif(c)
               .endif ;endif(b)
        .endif  ;endif(a)
        
        ; FIM DA QUESTAO
        
        INVOKE printf, ADDR msg2ft, ADDR msg2, ax,bx,cx,dx
        
        
        ret
main    endp
end
    

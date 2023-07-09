;Nao sabia a linguagem entao fiz as duas
; Testei
            .686
            .model flat,c
            .stack 100h
printf      PROTO  arg1:Ptr Byte, printlist:VARARG
scanf       PROTO  arg2:Ptr Byte, inputlist:VARARG
            .data
infmt       byte "%lf",0
msgfmt      byte "%s",0Ah,0
msg1        byte "x is greater than y",0
msg2        byte "x and y are equal",0
x           real8   ?
y           real8   ?

; A questão não diz o tipo de variavel  ( double,float,long double)

            .code
main        proc
            INVOKE scanf, ADDR infmt, ADDR x
            INVOKE scanf, ADDR infmt, ADDR y
if01:       fld y
            fld x
            fcomip st(0), st(1)
            jbe elseif01
then01:     INVOKE printf, ADDR msgfmt, ADDR msg1
            jmp endif01
elseif01:   nop
            fld x
            fld y
            fcomip st(0),st(1)
            jne endif01
            INVOKE printf,ADDR msgfmt,ADDR msg2
endif01:    nop
            ret
main        endp
end            

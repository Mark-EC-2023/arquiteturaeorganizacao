; Correção: 0,5
; Fiz em C e em asm pois não sabia qual era pra ser
;Testei
            .686
            .model flat,c
            .stack 100h
printf      PROTO  arg1:Ptr Byte, printlist:VARARG
scanf       PROTO  arg2:Ptr Byte, inputlist:VARARG
            .data
infmt       byte "%lf",0
msgfmt      byte "%s",0Ah,0
msg1        byte "x is greater than y",0
msg2        byte "x is less than or equal to y",0
x           real8   ?
y           real8   ?
; Na questão não diz qual tipo ele quer (float,double,long double)
            .code
main        proc

INVOKE scanf,ADDR infmt,ADDR x
INVOKE scanf,ADDR infmt,ADDR y

if01:       fld y
            fld x
            fcomip st(0), st(1)
            jbe else01
then01:     INVOKE printf, ADDR msgfmt, ADDR msg1
            jmp endif01
else01:     INVOKE printf, ADDR msgfmt,ADDR msg2 
endif01:    nop
            ret
main        endp
end            

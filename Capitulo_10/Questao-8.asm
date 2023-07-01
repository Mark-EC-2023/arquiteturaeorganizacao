            .686
            .model flat,c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
            .data
in1fmt      byte "%lf",0
msg0fmt     byte 0Ah,"%s",0
msg1fmt     byte 0Ah,"%s%6.1f",0Ah,0
msg0        byte "Enter a positive double for x: ",0
msg1        byte "The sum is: ",0
x           real8 ?
sum         real8 ?
zero        real8 0.0
            .code
main        proc
            ;sum = 0.0
            fld zero
            fstp sum
; inicializando x com 0
            fld zero
            fstp x
; inicializo x com 0
; para que na primeira execução 
; ele não altere nada
; a nova lógica é a seguinte:
; ele adiciona o x da execução anterior
; e na mesma execução ele faz o scanf do x a ser adicionado na proxima execução
; dessa forma a implementação do-while terah a mesma resposta da while             
dowhile01:  nop  

            ;sum = sum + x
            fld sum
            fadd x
            fstp sum
            INVOKE printf, ADDR msg0fmt, ADDR msg0
            INVOKE scanf, ADDR in1fmt, ADDR x
            fld zero
            fld x
            fcomip st(0), st(1) ; compare x e 0
            jbe endw01 ; pule se for menor ou igual
            jmp dowhile01
endw01:     nop
            INVOKE printf, ADDR msg1fmt, ADDR msg1,sum
            ret
main        endp
end 

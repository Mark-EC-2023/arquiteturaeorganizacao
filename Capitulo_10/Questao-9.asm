; Correção: 0,5
;Testei
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
            .data
in1fmt      byte "%lf",0
inmsg       byte "Digite o valor da posicao %d : ",0
pl          byte 0Ah,0
msg1fmt     byte 0Ah,"%s",0Ah,0Ah,0
msg2fmt     byte " %3.1f",0Ah,0
msg1        byte "Array",0
n           sdword 5
array       real8 5 dup(?)
aux         sdword 0
leitor      real8 ?
            .code
main        proc
            lea esi , array+0
            mov ecx,5
            
            .while ecx > 0
            
            push ecx
            inc aux
            mov edi,esi

            INVOKE printf,ADDR inmsg, aux 
            INVOKE scanf, ADDR in1fmt, ADDR real8 ptr leitor
            
            pop ecx
            fld leitor
            fstp real8 ptr [edi]
            add esi,8
            dec ecx
            .endw

            INVOKE printf, ADDR msg1fmt, ADDR msg1
            lea esi,array
            mov ecx,n
                
            .repeat
            push ecx
            INVOKE printf, ADDR msg2fmt, real8 ptr [esi]
            pop ecx
            add esi,8
            .untilcxz

            INVOKE printf, ADDR msg1fmt, ADDR msg1
            mov ebx,0
            mov ecx,n
            .repeat
            push ecx
            INVOKE printf, ADDR msg2fmt, array[ebx]
            pop ecx
            add ebx,8
            .untilcxz
            ret
main        endp
end

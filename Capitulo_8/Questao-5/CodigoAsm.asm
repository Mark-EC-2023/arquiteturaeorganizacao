; Correção: 1,0
;Testei
            .686
            .model flat,c
            .stack 100h
printf      PROTO   arg1:Ptr Byte, printlist:VARARG
scanf       PROTO   arg2:Ptr Byte, inputlist:VARARG
            .data
Array1      sdword 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
Array2      sdword 20 dup(?)
out1fmt     byte "Valores do Array2: ",0
out2fmt     byte "%d ",0
out3fmt     byte 0Ah,0
aux         sdword ?
            .code
main        proc
            ; Carregando base dos arrays nos registradores
            lea esi,Array1
            lea edi,Array2
            
            ; iniciando laco de 20 execuções 
            ; para copiar os elementos    
            mov ecx,20
            .repeat
            ; copia
            mov eax,[esi]
            mov [edi],eax
            ; incremento
            add esi,4
            add edi,4
            .untilcxz
            ; Carregando base dos arrays nos registradores 
            lea esi,Array2

            INVOKE printf, ADDR out1fmt

            ;Segundo laco para printar
            ; 
            mov ecx,0
            .while ecx < 20
            mov eax, [esi]
            mov aux,eax
            push ecx
            push esi
            INVOKE printf ,ADDR out2fmt, aux
            pop esi
            pop ecx
            add esi,4
            inc ecx
            .endw

            INVOKE printf, ADDR out3fmt

            ret
main        endp
end            

; No ponto

.686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
av          sdword ?
bv          sdword ?
cv          sdword ?
dv          sdword ?
outfmt      byte "%d %d %d %d", 0
inpfmt      byte "%d%d%d%d", 0

            .code
main        proc
            INVOKE scanf, ADDR inpfmt, ADDR av, ADDR bv, ADDR cv, ADDR dv
    
            ; INICIO DA QUESTAO
            
            mov     eax, bv
if01:       cmp     av,eax
            jle     else01
            jmp     then01
else01:  nop
if02:       cmp     eax,cv
            jl      else02
            jmp     then02
else02:  nop         
if03:       mov     eax, dv
            cmp     cv,eax
            jle     else03
            jmp     then03
else03:   mov     ebx, 2
            mov     eax, dv
            cdq
            idiv    ebx
            mov     dv, eax
            jmp     endif03   
then03:  nop
            add     cv, eax
            jmp     endif03
then02:  sub     bv, 2
            jmp     endif02
then01:  dec     av
            jmp     endif01
            
            
endif03:       nop
endif02:       nop
endif01:       nop  

; FIM DA QUESTAO
            INVOKE printf, ADDR outfmt, av, bv, cv, dv
            ret
main        endp
            end

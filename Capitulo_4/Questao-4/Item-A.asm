; O codigo esta adaptado para teste
; Mas eh indicado o inicio e fim da questao

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
            .if     av <= eax
            .if     eax < cv
            mov     eax, dv
            .if     cv<= eax
            mov     ebx, 2
            mov     eax, dv
            cdq
            idiv    ebx
            mov     dv, eax
            .else
            add     c, eax
            .endif
            .else
            sub     bv, 2
            .endif
            .else
            dec     av
            .endif
            
            ; FIM DA QUESTAO
            
            INVOKE printf, ADDR outfmt, av, bv, cv, dv
            ret
main        endp
            end

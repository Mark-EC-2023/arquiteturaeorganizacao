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
            
if1:        cmp     av,eax
            jle     else1
            jmp     then1
else1:      nop
if2:        cmp     eax,cv
            jl      else2
            jmp     then2
else2:      nop         
if3:        mov     eax, dv
            cmp     cv,eax
            jle     else3
            jmp     then3
else3:      mov     ebx, 2
            mov     eax, dv
            cdq
            idiv    ebx
            mov     dv, eax
            jmp     test
then3:      nop
            add     c, eax
            jmp     test
then2:      sub     bv, 2
            jmp     test
then1:      dec     av
            jmp     test
            
            ; FIM DA QUESTAO
test:       nop            
            INVOKE printf, ADDR outfmt, av, bv, cv, dv
            ret
main        endp
            end

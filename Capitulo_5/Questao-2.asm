; Correção: 0,1
          .686
          .model    flat,c
          .stack    100h
printf    PROTO	arg1:Ptr Byte, printlist:VARARG
scanf     PROTO	arg2:Ptr Byte, inputlist:VARARG
          .data
ans     sdword    ?
x       sdword    ?
y       sdword    ?  
i       sdword    ?  
infmt    byte      "%d%d%d",0
msg1fmt  byte      0Ah,"%s",0Ah,0
msg1     byte      "Digite o valor de x,y,ans: ",0
msg2fmt  byte      0Ah,"%s%d%d%d",0Ah,0
msg2     byte      "O valor final de x,y,ans eh : ",0

          .code
main      proc
          INVOKE    printf, ADDR msg1fmt,ADDR msg1
          INVOKE    scanf, ADDR infmt, ADDR x,ADDR y ,ADDR ans
          mov ans,0 ; initialize ans to 0
          mov eax,x
if01:     cmp  x,0
          jne endif01
then01:   mov ecx,1 ; initialize ecx to 1 
if02:     cmp ecx,y
then02:   jge endif02
          mov eax,ans ; load eax with ans
          add eax,x ; add x to ans
          mov ans,eax ; store eax in ans
          inc ecx ; increment ecx by one
          jmp if02
endif02:  nop
          mov i,ecx ; store ecx in i
endif01:  nop

          INVOKE printf, ADDR msg2fmt,ADDR msg2, x,y,ans

          ret       
main    endp 
end	

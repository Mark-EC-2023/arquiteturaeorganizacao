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

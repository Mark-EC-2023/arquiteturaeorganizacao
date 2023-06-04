<h1>
  Questoẽs do Capitulo 5
  <h2>
    Questão 1
    <h3>
      A. Incorreto, não existe a instrução .for em masm.
      
      B. Correto.
      
      C. Correto.
      
      D. Incorreto, não existe essa direiva (.untiledx).
    
      E. Correto , mas não tem condição para parar o loop.
      
 
  <h2>
    Questão 3
    <h3>
      A. Três vezes.
      
      B. Uma vez.
      
      C. Nenhuma vez.
  
  <h2>
    Questão 4
    <h3>
      
~~~asm
            mov ans,0  
if01:       cmp y,0
            je endif01
then01:     mov ecx,1     
rep:        mov eax,ans
            add eax,x
            mov ans,eax
            inc eax
            cmp ecx,y
            jle endrep
            jmp rep
endrep:     mov i,ecx
endif01:    nop  
      
~~~
      
  <h2>
    Questão 5
    <h3>

      A.
      
~~~asm
      
mov edx,eax
mov eax,0
.while(edx >= ebx)
sub edx, ebx
inc eax
.endw
           
~~~
      
      B.
~~~asm
   
mov  
      
~~~
      

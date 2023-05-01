<h1>
  Questões do Capitulo 4
  
  <h2>
    Questão 1
    
   <h3>
      
     A. Incorreto , o operador lógico é '==', e não '='.
      
     B. Incorreto, não tem esse "then" em diretiva.
      
     C. Incorreto, (x-1) não é uma operação lógica, em C e C++, esse comando é valido, mas em assemby não.
      
     D. Correto.
     
  <h2>
    Questão 2
    
   <h3>
     Código em arquivo separado.
     
  <h2>
    Questão 3
   
   <h3>
      
A. 
~~~asm
if01:     cmp w,1
          jne endif
          cmp x,2
          jne endif
then01:   dec y
endif01:  nop      
      
~~~ 
     
B.
~~~asm
; (!(num > 0 && num <= 3)) = 
; !(num > 0) || !(num <=3) = 
; num <= 0 || num > 3
if01:     cmp num,0
          jle then01
          cmp num,3
          jg then01
          jmp endif01
then01:   sub count,2
endif01:  nop     
    
~~~

C.
~~~asm
if01:     cmp y,3
          jne endif01
          cmp w,1
          je then01
          cmp x,2
          je then01
          jmp endif01
then01:   inc z
endif01:  nop
     
~~~
     
 D.
 ~~~asm
; Tentando traduzir à uma lógica matematica:
; a + b * c + d
; dessa forma a multiplicação tem preferencia na ordem
; a + (bc) + d =>  a || bc || d
if01:     cmp b,2
          jne or01
          cmp c,3
          jle or01
          jmp then01
or01:     cmp a,1
          je then01
          cmp d,4
          jle then01   
          jmp endif
then01:   dec e
endif01:  nop
     
 ~~~

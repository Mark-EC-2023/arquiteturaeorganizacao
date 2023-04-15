<h1>
  Questões do Capitulo 3
  
  <h2> 
    Questão 1
    
   <h3>
     
     A. Incorreto, não precisa desse 1.
     
     B. Correto.
     
     C. Incorreto, essa operação não permite memória com memória.
      
     D(B). Incorreto, o idiv não pode receber imediato.
     
     E. Incorreto, não pode subtrair de um imediato.
     
     F. Correto
     
  <h2>
    Questão 2
    
   <h3>
     
A.
     
~~~asm
mov eax,3
imul number
mov product,eax   
~~~
     
B.
     
~~~asm
mov eax,number
cdq
idiv amount
mov result,edx
~~~

C.
~~~asm
mov eax,number
mov ebx,2
cdq
idiv ebx
mov answer,eax           
~~~
     
D.
~~~asm
mov difference,4
mov eax,number
sub difference,eax
mov difference,eax
~~~
     
     
  <h2>
    Questão 3
    
   <h3> 
     
A.
     
~~~asm
mov eax,x
imul y
mov ecx,eax
mov eax,z
mov ebx,2
imul ebx
add ecx,eax
mov x,ecx      
~~~
     
B.
    
~~~asm
mov eax,c
mov ebx,3
cdq
idiv ebx
mov a,eax
mov eax,b
sub a,eax
mov a,eax
~~~
     
C.
     
~~~asm
mov eax,num3
imul num4
mov ebx,eax
mov eax,num1
cdq
idiv num2
sub eax,ebx
mov total,eax    
~~~
     
D.
 
~~~asm
mov eax,s
neq eax
mov r,eax
mov eax,t     
add r,eax
mov r,eax
inc t        
~~~

  <h2>
    Questão 4
    
   <h3>
     
A.
     
~~~asm
dec i  
     
~~~

B.

~~~asm

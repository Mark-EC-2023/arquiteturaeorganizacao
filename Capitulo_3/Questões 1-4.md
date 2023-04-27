<h1>
  Questões do Capitulo 3
  
  <h2> 
    Questão 1

> Correção: 0,5
   
   <h3>
     
     A. Incorreto, não precisa desse 1.

     B. Correto.
     
     C. Incorreto, essa operação não permite memória com memória.
      
     D(B). Incorreto, o idiv não pode receber imediato.
     
     E. Incorreto, não pode subtrair de um imediato.
     
     F. Correto
     
  <h2>
    Questão 2

> Correção: 0,4

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

> Correção: Não precisa da última instrução.
    
D.
~~~asm
mov difference,4
mov eax,number
sub difference,eax
mov difference,eax
~~~
     
     
  <h2>
    Questão 3

> Correção: 0,4

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

> Correção: não entendi o propósito das instruções _mov a, eax_. 

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
 
> Correção: Se você faz _add r, eax_, o valor de _r_ já é atualizado. Ao fazer _mov r, eax_, o valor que estava correto, torna-se errado. 

~~~asm
mov eax,s
neg eax
mov r,eax
mov eax,t     
add r,eax
mov r,eax
inc t        
~~~

E. 
  
 ~~~asm
 mov eax,i
 sub eax,j
 imul k
 imul n
 mov m,eax    
 ~~~

F. 
     
~~~asm
mov eax,c
cdq
idiv d
imul e
mov ebx,eax
mov eax,a
sub eax,b
add eax,ebx
mov q,eax     
~~~     
     
  <h2>
    Questão 4

> Correção: 0,4  
   
   <h3>
     
A.
     
~~~asm
dec i  
     
~~~

B.

~~~asm
inc k
mov eax,k
sub eax,m
mov j,eax
~~~  
     
C.
     
~~~asm
mov eax,x
add eax,y
neg eax
mov z,eax         
~~~

D.

> Correção: cadê a subtração?
   
~~~asm    
inc b
mov eax,b
add eax,c
mov a,eax     
inc c 
~~~     
     
E.
  
~~~asm
E. x = -y + z--;      
mov eax,y
neg eax
add eax,z
mov x,eax
dec z       
~~~ 

 
    

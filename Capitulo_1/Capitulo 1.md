<h1>
  Questões do Capitulo 1.

> Correção: 1,9

  <h2>
    Questão 1
	  
> Correção: 0,4

   <h3>
	
     A. Correto

     B. Incorreto, a variável deve começar com letra

     C. Correto

     D. Incorreto, a variável deve começar com letra

     E. Incorreto, a variável deve começar com letra

     F. Incorreto, a variável não pode ter '.'


  <h2> 
    Questão 2

> Correção: 0,4

    (Considere essas linhas dentro do .data)
	  
   <h3>
	
A. 
~~~asm
	initial  byte    ?
~~~ 
B. 
~~~asm
	grade    byte    'B'
~~~
C.
~~~asm
	x        byte    'P'
	y        byte    'Q'
~~~
D.
~~~asm
	amount   sdword   ?
~~~
E.
~~~asm
	count    sdword   0
~~~
F.
~~~asm
	number   sdword   -396
~~~
	
  <h2>
    Questão 3

> Correção: 0,3

   <h3>
		
     A. Incorreto, o certo é "mov", não "move"

> Correção: os dois operandos não podem ser localizações na memória.

     B. Correto

     C. Correto

     D. Correto 

     E. Incorreto, não é possível mover uma variável para um imediato

     F. Correto

     G. Incorrreto, não é permitido essa referência de negativo no registrador, o correto é multiplicar o valor por -1

     H. Correto


  <h2>
    Questão 4
	
> Correção: 0,4

    (Considere essas linhas dentro do .code)
<h3>
	
A.
~~~asm
	 mov i,1
~~~ 
B.
~~~asm
	mov eax,y
	mov x,eax
~~~
C.
~~~asm
	mov c,2
	mov eax,c
	mov b,eax
	mov eax,b
	mov a,eax
~~~	
D.
~~~asm
	mov y,1
	mov eax,y
	mov x,eax
~~~
E.
~~~asm
	mov a,1 ; linha 1
	mov b,2 ; linha 2
	mov eax,a ; linha 3
	mov c,eax
	mov eax,b ; linha 4
	mov a,eax
	mov eax,c ;linha 5
	mov b,eax
~~~	
	
  <h2>
    Questão 5

> Correção: 0,4

    (Considere essas linhas dentro do .code	  
   <h3>
	
A.
~~~asm
	mov a,'B'
~~~
B.
~~~asm
	mov al,c
	mov b,al
~~~
C.
~~~asm
	mov d,'E'
	mov al,d
	mov e,al
~~~
D.
~~~asm
	mov d,'z'; linha 1
	mov al,d; linha 2
	mov a,al
	mov al,a ;linha 3
	mov b,al
~~~
E.
~~~asm
	mov a,'2'
	mov b,'?'
	mov al,b
	mov a,al
~~~

*Questões do Capitulo 1.*


Questão 1
A. Correto

B. Incorreto, a variável deve começar com letra

C. Correto

D. Incorreto, a variável deve começar com letra

E. Incorreto, a variável deve começar com letra

F. Incorreto, a variável deve começar com letra


Questão 2
Considere essas linhas dentro do .data 
A. 
	initial  byte    ?

B. 
	grade    byte    'B'
	
C.
	x        byte    'P'
	y        byte    'Q'
	
D.
	amount   sdword   ?
	
E.
	count    sdword   0
	
F.
	number   sdword   -396
	
	
Questão 3
A. Incorreto, o certo é "mov", não "move"

B. Correto

C. Correto

D. Correto 

E. Incorreto, não é possível mover uma variável para um imediato

F. Correto

G. Incorrreto, não é permitido essa referência de negativo no registrador, o correto é multiplicar o valor por -1

H. Correto


Questão 4
Considere essas linhas dentro do .code
A.
	 mov i,1
	 
B.
	mov eax,y
	mov x,eax
	
C.
	mov c,2
	mov eax,c
	mov b,eax
	mov eax,b
	mov a,eax
	
D.
	mov y,1
	mov eax,y
	mov x,eax

E.
	mov a,1 ; linha 1
	mov b,2 ; linha 2
	mov eax,a ; linha 3
	mov c,eax
	mov eax,b ; linha 4
	mov a,eax
	mov eax,c ;linha 5
	mov b,eax
	
	
Questão 5
A.
	mov a,'B'

B.
	mov al,c
	mov b,al

C.
	mov d,'E'
	mov al,d
	mov e,al

D.
	mov d,'z'; linha 1
	mov al,d; linha 2
	mov a,al
	mov al,a ;linha 3
	mov b,al
	
E.
	mov a,'2'
	mov b,'?'
	mov al,b
	mov a,al
	

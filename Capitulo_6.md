# Questão 1
* A. Correto
* B. Incorreto,
* C. Incorreto: Girar não é uma instrução, deve-se usar ROL ou ROR.
* D. Correto
* E. Correto
* F. Incoreto, Não pode mudar duas regiões de memória
* G. Correto
* H. Incorreto, LOL não é uma instrução, tem que usar ROL
* I. Incorreto, Shift não é uma instrução, tem que usar shl ou shr
# Questão 2
A.
```asm
mov eax, total
sar eax, 5 ; divide by 32
sub num,eax ; sub eax from num
mov eax, num
mov answer, eax
```
B.
```asm
mov eax,amount
add eax,number
sal eax,2 
mov result,eax 
```
C.
```asm
mov eax, y
sal eax,3 
mov ebx, z
sar ebx,1
add eax,ebx
mov x,eax
```
D.
```
--asm
mov ebx, a
sar ebx,4
mov eax, b
mov ecx, 6
imul ecx 
sub ebx,eax
mov a,ebx
```
Questão 3
```
push eax
push ebx
push ecx
push edx

pop edx
pop ecx
pop ebx
pop eax
```

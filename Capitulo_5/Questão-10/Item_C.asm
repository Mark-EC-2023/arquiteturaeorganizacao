	      .686
	      .model 	flat,c
	      .stack 	100h
printf	  PROTO   arg1:Ptr Byte, printlist:VARARG
scanf	  PROTO	  arg2:Ptr Byte, inputlist:VARARG
	      .data
infmt   "%d",0 
msg1fmt 0Ah,"%s",0Ah,0
msg1    "Digite o valor de n:",0
msg2fmt 0Ah,"%s%d",0Ah,0
msg2    "O valor final eh: ",0
n       sdword  ?
var     sdword ?
        .code
        
        
        main	proc
	      INVOKE printf, ADDR msg1fmt, ADDR msg1
	      INVOKE scanf, ADDR infmt, ADDR n
        mov edx,n
        ; testar se é 0 ou 1
        cmp edx,1
if0or1: jle cs01

        dec n 
        mov ecx,n ; contador
	      mov eax,0 ; aux1 , comeca com fib de 0
        mov ebx,1 ; aux2 , comeca com fib de 1
	      mov edx,0 ; booleano 
	
	; dentro do while ele vai por meio do booleano
	; mudar um dos auxiliares, e na proxima execucao
	; ira alterar o outro, assim o para descobrir fib(n)
	; ele tera fib(n-1)+fib(n-2) e depois de somar vai
	; guardar o valor de fib(n) no lugar de fib(n-2)
       
        
        .repeat
	
          .if ebx != 0
            add eax,edx
            mov edx,1
            mov var,eax
	
          .else
            add ebx,eax
            mov edx,0
            mov var,ebx
          .endif
	
          inc ecx
        .untilcxz
        
        jmp fim
        
cs01:   mov eax,edx
        jmp fim
        
        
fim:    nop
        INVOKE printf, ADDR msg2fmt, ADDR msg2,var
        
        
        
        ret
main	  endp
	      end	

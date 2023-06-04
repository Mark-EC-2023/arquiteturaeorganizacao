	      .686
	      .model 	flat,c
	      .stack 	100h
printf	PROTO 	arg1:Ptr Byte, printlist:VARARG
scanf	  PROTO	arg2:Ptr Byte, inputlist:VARARG
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
        mov ecx,1
        mov eax,1
        .repeat
          
        inc ecx
        imul ecx
        
        
        .until edx > ecx
        
        jmp fim
        
cs01:   mov eax,1
        jmp fim
        
        
fim:    mov var,eax
        INVOKE printf, ADDR msg2fmt, ADDR msg2,var
        
        
        
        ret
main	  endp
	      end	

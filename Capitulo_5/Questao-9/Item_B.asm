	      .686
	      .model 	flat,c
	      .stack 	100h
printf	PROTO 	arg1:Ptr Byte, printlist:VARARG
scanf	PROTO	arg2:Ptr Byte, inputlist:VARARG
	      .data
infmt   byte "%d",0 
msg1fmt byte 0Ah,"%s",0Ah,0
msg1    byte "Digite o valor de n:",0
msg2fmt byte 0Ah,"%s%d",0Ah,0
msg2    byte "O valor final eh: ",0
n       sdword  ?
var     sdword ?
i	sdword ?
        .code
        main	proc
	INVOKE printf, ADDR msg1fmt, ADDR msg1
	INVOKE scanf, ADDR infmt, ADDR n
        
	mov edx,n
        ; testar se é 0 ou 1
if0or1: cmp edx,1
	jg else01
	jmp cs01
else01: nop       
	mov ecx,2
	mov eax,1
        .repeat
	mov i,ecx
	imul i
	cmp ecx,n
	je fim
        inc ecx
        .until  ecx > n
        
	mov eax,var
	
        jmp fim
        
cs01:   mov eax,1

        jmp fim
        
        
fim:    mov var,eax
        INVOKE printf, ADDR msg2fmt, ADDR msg2,var
        
        ret
main	  endp
	      end	

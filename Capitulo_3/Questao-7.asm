; Correção: 1,0
	.686
	.model 	flat,c
	.stack 	100h
printf	PROTO 	arg1:Ptr Byte, printlist:VARARG
scanf	PROTO	arg2:Ptr Byte, inputlist:VARARG
	.data
in1fmt	byte	"%d",0
msg1fmt byte 	0Ah,"%s",0
msg2fmt byte    0Ah,"%s%d",0Ah,0
msg1	byte	"Enter the degrees in Fahrenheit: ",0
msg2	byte	"The degrees in Celsius is: ",0
f	sdword  ?
cel	sdword	?
	.code
main	proc
	INVOKE printf, ADDR msg1fmt, ADDR msg1
	INVOKE scanf, ADDR in1fmt, ADDR f
	mov eax,f
	sub eax,32
	mov ebx,5
	imul ebx
	mov ebx,9
	cdq
	idiv ebx
	mov cel,eax
	INVOKE printf, ADDR msg2fmt, ADDR msg2, cel
	ret
main	endp
	end	 

; Correção: 0,3. Não sei onde você testou, mas o correto é 0Ah, não Ah0. 
; testei
	.686
        .model 	flat, c
        .stack 	100h
printf 	PROTO arg1:Ptr Byte, printlist:VARARG
scanf_s PROTO arg2:Ptr Byte, inputlist:VARARG
.data
x       real10  ?
y       real10  ?
infmt   byte    "%Lf",0
out1fmt byte    Ah0,"%s",0
out2fmt byte    Ah0,"%s6.4Lf",Ah0,Ah0,0
out1    byte    "Enter a long double for x: ",0
out2    byte    "The long double in y is: ",0
	      .code
main 	proc
        INVOKE printf, ADDR out1fmt, ADDR out1
        INVOKE scanf_s,ADDR infmt,ADDR x
        fld x
        fstp y
        INVOKE printf,ADDR out2fmt,ADDR out2, y
        
	ret
main    endp
end

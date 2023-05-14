.686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
voltage     sdword  ?
msg1fmt     byte    "%s",0
msg1        byte    "Enter an AC Voltage: ",0
msgawfmt    byte    0Ah,"%s",0Ah,0
msghlfmt    byte    "%s",0Ah,0
inpfmt      byte    "%d", 0
msga        byte    "Voltage is Acceptable",0
msgh        byte    "Voltage too High",0
msgl        byte    "Voltage too Low",0
msgw        byte    "Warning",0
plfmt       byte    0Ah,0



            .code
main        proc

            INVOKE printf,ADDR msg1fmt,ADDR msg1
            INVOKE scanf, ADDR inpfmt, ADDR voltage 
            
if1:        mov     eax,voltage
            cmp     eax,110
            jl      else1
            cmp     eax,120
            jg      else1
then1:      nop
            INVOKE  printf, ADDR msgawfmt,ADDR msga
            jmp     FIM
else1:      nop
            INVOKE  printf, ADDR msgawfmt, ADDR msgw
if2:        cmp     eax,110
            jge     else2
then2:      INVOKE  printf, ADDR msghlfmt, ADDR msgl
            jmp     FIM
else2:      nop
            INVOKE  printf, ADDR msghlfmt, ADDR msgh
            jmp     FIM
FIM:        nop

            INVOKE  printf, ADDR plfmt
            
            ret
main        endp
            end
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            ret
main        endp
            end

.686
.model flat, c
.stack 100h

scanf PROTO arg2:Ptr Byte, inputlist:VARARG
printf PROTO arg1:Ptr Byte, printlist:VARARG

.data
msginput byte "%d", 0
msgfmt byte "%s", 0Ah, 0
msgfmt2 byte "%s%d", 0Ah, 0
n sdword ?
ans sdword ?
msg byte "enter n: ", 0
msg1 byte "factorial is: ", 0

.code
main proc
     INVOKE printf, ADDR msgfmt, ADDR msg
     INVOKE scanf, ADDR msginput, ADDR n

     call fatorial

     INVOKE printf, ADDR msgfmt2, ADDR msg1, ans
     ret
main endp

fatorial proc
         pushad
         mov ans, 1
        .while(n!=0)
         mov eax, n
         imul ans
         mov ans, eax
         dec n
         .endw
         popad
         ret
fatorial endp
         end
         

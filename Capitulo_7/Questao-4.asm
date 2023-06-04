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
fatorial macro x:REQ, y:REQ
         pushad
         mov x, 1
        .while(y!=0)
         mov eax, y
         imul x
         mov x, eax
         dec y
         .endw
         popad
         endm

main proc
     INVOKE printf, ADDR msgfmt, ADDR msg
     INVOKE scanf, ADDR msginput, ADDR n

     fatorial ans, n

     INVOKE printf, ADDR msgfmt2, ADDR msg1, ans
     ret
main endp
         end
         

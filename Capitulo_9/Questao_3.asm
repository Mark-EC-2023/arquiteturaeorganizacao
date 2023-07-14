.686 
            .model flat, c 
            .stack 100h 
 
printf      PROTO arg1:Ptr Byte, printlist:VARARG 
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG 
            .data 
 
msg1fmt     byte "%s %s", 0Ah, 0 
msg2fmt     byte "%s",0Ah, 0 
msg3fmt     byte "%d",0Ah,0 
msg1        byte "This is a palindrome. ",0 
msg2        byte "This isn't a palindrome. ",0 
 
string      byte "1234554321 aaabbbbaaa xyxyxyxyxy 1234567890 portapreta abcdeedcba araraarara cacaushoww testeteste ARARAARARA ", 0 
 
w           byte "123456789", 0 
r           sdword 10 
k           sdword  ? 
            .code 
main        proc 
            mov ecx, r 
            lea ebx, string 
            add ebx, sizeof string 
            lea esi, string 
 
WHILE01:       .repeat 
            push ecx 
            lea edi, w 
            mov al, " " 
WHILE02:    .while [esi] != al && esi <= ebx 
            mov ah, [esi] 
            mov [edi], ah 
            inc esi 
            inc edi 
ENDWH02:    .endw  
            call Palindrome 
            pop ecx 
            inc esi 
ENDWH01:    .untilcxz 
            ret 

main        endp 

Palindrome  proc 
            pushad 
            mov eax, r 
            mov ebx, 2 
            cdq 
            idiv ebx 
            mov ebx, eax 
            lea esi, w 
            mov edi, esi 
            mov eax, r 
            dec eax 
            add edi, eax 
            mov ecx, 0 
            mov al, [esi] 

WHILE03:    .while [edi]  == al && ecx < ebx 
            inc ecx 
            inc esi 
            dec edi 
            mov al, [esi] 
ENDWH03:    .endw 
IF01:       .if ecx == ebx 
            INVOKE printf, ADDR msg2fmt, ADDR msg1 
            .else  
            INVOKE printf, ADDR msg2fmt, ADDR msg2 
ENDIF01:    .endif  
            popad 
            ret 
Palindrome  endp 
            end

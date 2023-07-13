
          .686
          .model  flat, c
          .stack  100h
printf    PROTO   arg1:Ptr Byte, printlist:VARARG
scanf     PROTO   arg2:Ptr Byte, inputlist:VARARG
          .data
msg1fmt   byte    0Ah, "%s", 0
msg2fmt   byte    "%s", 0
msg3fmt   byte    0Ah, "%s", 0Ah, 0Ah, 0
msg4fmt   byte    "   %d", 0Ah, 0
msg5fmt   byte    0Ah, 0
in1fmt    byte    "%d", 0
msg1      byte    "Enter the number of integers to be input: ", 0
msg2      byte    "Enter a integer: ", 0
msg3      byte    "Sorted", 0
n         sdword  ?
array     sdword  20 dup(?)
temp      sdword  ?
          .code
main      proc
          INVOKE printf, ADDR msg1fmt, ADDR msg1
          INVOKE scanf, ADDR in1fmt, ADDR n
          INVOKE printf, ADDR msg5fmt
          
          .if n > 0                 
          mov ecx, n               
          mov edi, offset array + 0 

          .repeat
          push ecx                  
          INVOKE printf, ADDR msg2fmt, ADDR msg2
          INVOKE scanf, ADDR in1fmt, ADDR [edi]
          add edi, 4                
          pop ecx                   
          .untilcxz 
          
          .if n > 1                 
          mov ecx, n                
          dec ecx                   
          mov esi, offset array + 0 
          
          .repeat                   
          push ecx                  
          push esi                  
          mov edi, esi              
          add edi, 4                
          ;mov temp, 0
          
          .repeat                   
          mov eax, [esi]            
          .if [edi] < eax           
          mov ebx, [edi]
          mov [edi], eax
          mov [esi], ebx
          mov edx, 1
          .endif
          add edi, 4                
          .untilcxz
          
          cmp temp, 0
          ja  finalsort
          mov edi, esi              
          pop esi                   
          add esi, 4                
          pop ecx                   
          .untilcxz 
          finalsort:   nop
          .endif
          
          
          INVOKE printf, ADDR msg3fmt, ADDR msg3
          mov ecx, n                
          mov esi, offset array + 0 
        
          .repeat
          push ecx                  
          mov eax, [esi]            
          mov temp, eax             
          INVOKE printf, ADDR msg4fmt, temp 
          add esi, 4                
          pop ecx                   
          .untilcxz
        
          INVOKE printf, ADDR msg5fmt
        
          .endif
          ret
main      endp
          end

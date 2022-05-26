
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

include "emu8086.inc" 

.data

str db "ABBA $"
msg db "Palindrome $"
msg2 db "Not palindrome $"


.code 
main proc
    
      mov ax,@data
      mov ds,ax
      
       
      
      ;call palindrome
 
;palindrome proc
    
        mov si,offset str
        
            mov ah,9
         ;mov al,[si]
         mov dl,[si]
         int 21h
         printn
         
        loop1:
        
             mov al,[si]
             cmp al,'$'
             je lebel 
             inc si
             jmp loop1
             
           lebel:
             mov di,offset str
             dec si
             
         mov ah,9
         ;mov al,[si]
         mov dl,al
         int 21h
         printn
             
        loop2:
             cmp si,di
             jl out1
             mov al,[si]
             mov bl,[di]
             
             cmp al,bl
             jne out2
             
             dec si
             inc di
             jmp loop2
             
        out1:
        lea dx,msg
        mov ah,09h
        int 21h
        ;ret 
        jmp exit
        
        out2:
        lea dx ,msg2
        mov ah,09h
        int 21h
       ; ret
        ;palindrome endp
        
        exit:
end main
        
        
        





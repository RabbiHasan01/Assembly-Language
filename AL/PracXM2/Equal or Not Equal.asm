
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

include "emu8086.inc"

 
.code

    print "input "
    mov ah,1
    int 21h
    mov bl,al
    printn
    
    print "input "
    mov ah,1
    int 21h 
    printn
    
    cmp al,bl
    je equal
    jne notequal
    
    equal:
    printn "Equal"
    jmp end
    
    notequal:
    printn "Not Equal" 
    jmp end
    
    end:
    
    
    mov ah,4ch
    int 21h
    

ret





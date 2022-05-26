
 
include "emu8086.inc" 
.model small

.stack 100h
 

.code

main proc 
    
    
    mov ah,1
    int 21h
    sub al,48
    mov bl,al
     
    printn
     
    mov ah,1
    int 21h
    sub al,48
    mov bh,al
    
    printn
    
    mov al,bl
    mul bh 
    
    print "Result = "
    mov dl,al
    dec dl       ;range 0-9
    add dl,48
    
    mov ah,2
    int 21h
    
    exit:
endp
end main





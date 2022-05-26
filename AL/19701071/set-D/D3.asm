

include "emu8086.inc"
.model small
.stack 100h
.data

.code
main proc
    
    ;0 1 4 9
    
    mov bl,0
    mov cx,4
    
    level1:
    mov al,1;key
    mul bl ;0,1,2,3
    mul bl ;0,1,4,9
   
    inc bl  ;1,2,3
    
    mov dx,ax
    add dx,48
    mov ah,2
    int 21h
    
    print " " 
 
    loop level1
    
    
    exit:
    
    endp
end main



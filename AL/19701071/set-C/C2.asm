
include "emu8086.inc"
.model small

.stack 100h

.data

a db 5
 

.code

main proc
    
    ;(x-y)/5z)*
    
    mov ax,@data 
    mov ds,ax
    
    mov bh,9;any
    mov bl,2
    mov cl,1
    
    sub bh,bl;x-y
    
    mov al,cl
    mul a  
    mov ch,al
    
     
    
    mov al,bh
    div ch  ;ah=al%ch && al=al/ch
    
    mul al
    
    mov dl,al
    add dl,48
    mov ah,2
    int 21h
    
    exit:
end main
    
    
    
    





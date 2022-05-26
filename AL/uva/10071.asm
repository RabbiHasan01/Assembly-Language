

include "emu8086.inc"
.model small
.stack 100h

.data                              


.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    sub al,48 
    mov bl,al
    
    mov ah,1
    int 21h
    sub al,48
    mov bh,al
    
    mov al,2h
    
    mul bh
    
    mov cl,al
    
    mov al,cl
    mul bl
    
    mov dl,al ;output range 0-9
    add dl,48
    mov ah,2
    int 21h 
    
    exit:
endp
end main
    
    
    
    
    
    
    






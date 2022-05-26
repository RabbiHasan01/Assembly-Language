


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
    mov bl,al
    
    printn 
    
    mov ah,1
    int 21h
    mov bh,al
    
    printn 
    
    cmp bl,bh
    jge if   ;bl>=bh
    jl else  ;bl<bh
    
    if:
    sub bl,bh
    
    mov ah,2
    mov dl,bl ;range 0-9
    add dl,48
    int 21h
    jmp break 
    
    else:
    sub bh,bl
    
    mov ah,2
    mov dl,bh ;range 0-9
    add dl,48
    int 21h
    
    jmp break 
    
    break:
    
    
    
endp
end main






include "emu8086.inc"
.model small

.stack 100h

.data

msg1 dw  " Even number $"
msg2 dw  " Odd number $"

.code

main proc
    
    ;even-odd
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h 
    mov bh,al

    mov bl,2
    
    mov ah,0;clear reg
    
    div bl ;al=al/bl ah=al%bl

    
    cmp ah,0
    je Even
    jne Odd
    
    Even:
    lea dx,msg1 
    mov ah,9h
    int 21h
    jmp break
    
    Odd:
    lea dx,msg2
    mov ah,9h
    int 21h
    jmp break
    
    break:
    
    exit:
    mov ah,04ch
    int 21h
     
end main
    
    
    
    





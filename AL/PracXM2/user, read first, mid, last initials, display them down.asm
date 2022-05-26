


include "emu8086.inc"
.model small
.stack 100h
.data
 a db "enter input $"
 
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,a
    
    mov ah,9
    int 21h 
    
    printn
    
    
    mov ah,1
    int 21h
    mov bl,al
    
    int 21h
    
    mov bh,al
    
    int 21h
    mov cl,al
    
    printn
    
    mov ah,2
    mov dl,bl
    int 21h
    
    printn 
    
    mov ah,2
    mov dl,bh
    int 21h
    
    printn
    
    mov ah,2
    mov dl,cl
    int 21h
    
endp
end main
    
    




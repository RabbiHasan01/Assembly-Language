 
 
 
include "emu8086.inc"
.model small
.stack 100h

.data

   s db "rabbi"
.code

main proc
    
    mov ax,@data
    mov ds,ax 
    
    
    mov si,offset s
    
    mov cx,5
    
    loop1:
    
    mov bx,[si]
    push bx
    
    inc si
    
    loop loop1 
    
    
    mov cx,5
    
    loop2:
    pop dx
    
    mov ah,2
    int 21h
    loop loop2
    
    
endp
end main





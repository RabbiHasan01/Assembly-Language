
 
 
include "emu8086.inc"
.model small

.stack 100h

.data

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ax,3 ;inpu
    mov cx,ax; mul count
    dec cx
    mov bx,ax
    
    
   fact:
   
    dec bx;2
    mul bx ;ax=3*2,6*1

    loop fact
    
    break:
    ;ax=ah:al
     
    ;aam
    
    ;ok
    add ax,48
    mov dx,ax
    mov ah,2
    int 21h
     
    end main
    
     





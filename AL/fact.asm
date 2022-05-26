
 
 
include "emu8086.inc"
.model small

.stack 100h

.data

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ax,4 ;inpu
    mov cx,3; mul count
    
    mov bx,ax
    
    
   fact:
   
    dec bx;2
    mul bx ;ax=3*2,6*1

    loop fact
    
    break:
    ;ax=ah:al
     
    ;aam
     mov bx,ax
     mov bl,al
     mov bh,ah
     
     mov dl,ah
     add dl,48
     mov ah,2
     int 21h
     
     mov dl,bl
     add dl,48
     mov ah,2
     int 21h
     
  
    
    
    
    ;ok
    add ax,48
    mov dx,ax
    mov ah,2
    int 21h
     
    end main
    
     





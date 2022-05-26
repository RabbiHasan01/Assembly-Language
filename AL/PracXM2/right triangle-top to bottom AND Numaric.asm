
include "emu8086.inc"

.data

a dw 5 
b dw 1   
.code 
main proc
  
    mov ax,@data 
    mov ds,ax
    
    
    mov cx,a
    mov bx,a
    
    mov ax,b
      
    
    l1: 
    push cx
    
    push b
 
    l2:  
 
    mov dx,b
    add dx,48
    mov ah,2
    int 21h
    
    inc b
    
    loop l2
 
    pop b
    mov cx,bx
    
    l3:
    print " "
    ;int 21h
    
    loop l3
    
    dec bx
    printn 
    
    pop cx
    
    loop l1
    
endp
end main

 





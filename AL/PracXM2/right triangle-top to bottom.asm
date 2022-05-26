
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
    
      
    
    l1: 
    push cx
    
 
    l2:  
 
    mov dx,"*"
    mov ah,2
    int 21h
 
    
    loop l2
 
 
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

 










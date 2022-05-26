
include "emu8086.inc"

.data
   a dw 10
    
.code 
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov cx,a
    mov bx,a
   
    
    l1: 
    push cx
     
    mov cx,bx
 
 
    
    l2:  
    
    mov dx,'*'
    mov ah,2
    int 21h
  
    loop l2
    
    dec bx  
    mov cx,ax
    printn 
    pop cx
    
    loop l1
    
     exit:
     
     mov ah,4ch
     int 21h
     
endp
end main









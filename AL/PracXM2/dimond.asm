
include "emu8086.inc"

.data
   a dw 10 
   b dw 9
   c dw 1
    
.code 
main proc
    
    mov ax,@data
    mov ds,ax 
    
    mov cx,a
    mov bx,1
   
    
    l1: 
    push cx
     
    mov cx,bx
 
 
    
    l2:  
    
    mov dx,'*'
    mov ah,2
    int 21h
  
    loop l2
    
    inc bx  
    mov cx,ax
    printn 
    pop cx
    
    loop l1
    
    mov cx,b
    mov bx,b
   
    
    l3: 
    push cx
     
    mov cx,bx
 
 
    
    l4:  
    
    mov dx,'*'
    mov ah,2
    int 21h
  
    loop l4
    
    dec bx  
    mov cx,ax
    printn 
    pop cx
    
    loop l3
    
     exit:
     
     mov ah,4ch
     int 21h
     
endp
end main





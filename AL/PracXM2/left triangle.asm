


include "emu8086.inc"

.data

.code 
main proc
    
    mov cx,5
    mov bx,1
   
    
    l1: 
    push cx
    ;mov ax,cx
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
    
     exit:
     
     mov ah,4ch
     int 21h
     
endp
end main




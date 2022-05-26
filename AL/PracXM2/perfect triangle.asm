
include "emu8086.inc"

.data

a dw 5    
.code 
main proc
  
    mov ax,@data 
    mov ds,ax
    
    
    mov cx,a
    mov bx,1
   
    
    l1: 
    push cx
   
    ;mov ah,2
    ;mov dl,32 
     
    l2:
    print " "
    ;int 21h
    
    loop l2
    
    mov cx,bx 
    
    l3:  
    
    mov dx,'*'
    mov ah,2
    int 21h
  
    loop l3
    
    printn
    
    inc bx 
    inc bx 
    
    pop cx
    
    loop l1
    
endp
end main
    
    
    
    
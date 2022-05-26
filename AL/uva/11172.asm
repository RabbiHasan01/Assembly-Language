
include "emu8086.inc"
 
.model small
.stack 100h

 

.code

main proc
    
 
    
    mov cx,3 ;loop exicute 3 times
     
    
    lp:  
    
     mov ah,1
     int 21h
     mov bh,al
     
     print " "
     
     mov ah,1
     int 21h
     mov bl,al 
     
     printn
     
     cmp bh,bl
     
     jl less
     jg greater
     je equal
    
     less:
     printn "<"
     jmp break
     
     greater:
     printn ">"
     jmp break
     
     equal:
     printn "="
     jmp break
      
     
     break: 
     
     
     loop lp
     
      
     
      
     
endp
end main
    








include "emu8086.inc"

.data

a db ?
.code

main proc 
    
    
    mov ax,@data
    mov ds,ax
    
    mov di,offset a
    
    
       mov cx,5
       
       input:
       
          mov ah,1
            
          int 21h
          
           mov [di],al
          inc di 
   
        loop input  
        
       
       mov di,offset a
          
       mov cx,5
       
      output:
             
             mov dl,[di]
             mov ah,2
             int 21h
             inc di 
             
      loop output




;xxxxxxxxx
;x       x
;x       x
;x       x
;x       x
;x       x
;x       x
;xxxxxxxxx



include "emu8086.inc"
.model small
.stack 100h
.data    
   

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    ;printn "10 x 10 solid box of asterisks"
    printn
    
    mov cx,8 
        
        lev1:
             mov dl,"X" 
             mov ah,2
             int 21h
             
        loop lev1
        
    printn
    
    mov bx,6 
    mov cx,6
    
    lev2:
        push cx
        
        mov cx,1 
        
        lev3:
             mov dx,"X" 
             mov ah,2
             int 21h
              
             lp:
             print " "
             print " "
             print " "
             print " " 
             print " "
             print " "
 
             
             mov dx,"X" 
             mov ah,2
             int 21h
                     
          ;printn
             
        loop lev3
        
        printn
 
        pop cx
        
     loop lev2
     
      
    
     mov cx,8 
        
        lev4:
             mov dl,"X" 
             mov ah,2
             int 21h
             
        loop lev4 
endp
end main





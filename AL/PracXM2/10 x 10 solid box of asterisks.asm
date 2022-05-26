 
;10x10

;xxxxxxxxxx
;xxxxxxxxxx
;xxxxxxxxxx
;xxxxxxxxxx
;xxxxxxxxxx
;xxxxxxxxxx
;xxxxxxxxxx
;xxxxxxxxxx
;xxxxxxxxxx
;xxxxxxxxxx

include "emu8086.inc"
.model small
.stack 100h
.data    
   

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    printn "10 x 10 solid box of asterisks"
    printn
    
    mov cx,10
    
    lev:
        push cx
        
        mov cx,10 
        
        lev2:
             mov dl,"X" 
             mov ah,2
             int 21h
             
        loop lev2
        printn
        
        pop cx
        
     loop lev
     
endp
end main





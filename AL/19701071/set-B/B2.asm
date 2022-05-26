
include "emu8086.inc"
.model small

.stack 100h

.data
 

.code

main proc
    
   ; (2-x)+x*x
   
   mov al,3 ;x=3
   mov bl,al
   
   mul bl ;x*x
     ;ax=ah:al
   
   sub bl,2
   
   add al,bl ;al=9,bl=1 ax=10
   mov ah,0
   aaa   ;adjust after add
   
   add al,48 ;decimal
   add ah,48
   
   mov cx,ax 
    
   mov dl,ch
   mov ah,2
   int 21h
   
   mov dl,cl
   mov ah,2
   int 21h
   
endp
end main
   
    





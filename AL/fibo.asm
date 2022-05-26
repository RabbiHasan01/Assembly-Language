
include "emu8086.inc"

.model small    

.stack 100h
.data 

.code

main proc                                         
                       ;0, 1 ,1
    mov ax ,@data      ;al,bl al bl
    mov ds,ax 
    
     mov bl,0
     mov bh,1
     mov al,0
     print "0 1 "
     mov cx,4
    
    
    fibo:
      add bl,bh;1,2,3 
      mov al,bl;2
      
      mov ah,2
      mov dl,al
      call writeint
      call crlf
      int 21h
       
       
      mov bl,bh ;1,1
      mov bh,al ;1,2
      
    
    print " "
    loop fibo
    
 
    





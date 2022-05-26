
;MIN value from arr  
include "emu8086.inc"
 
.model small    
.stack 100h

.data
   arr db 9,5,6,3,2
.code

main proc
    
    mov ax,@data  
    mov ds,ax
    
    mov si,offset arr
    mov cx,5
    
    mov bl,[si]
    
     
    
    loop1: 
          
         cmp [si],bl  ;[si] >= bl
         jle store
         
         comp:
             inc si  
          
    loop loop1 
    
    print "minimum = "
    mov dl,bl
    add dl,48
    
    mov ah,2
    int 21h
    
    store:
          mov bl,[si]
          jmp  comp
          
          
       
    










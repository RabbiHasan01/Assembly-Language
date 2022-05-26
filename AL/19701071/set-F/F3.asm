
include "emu8086.inc" 
.model small

.stack 100h
.data 

.code

main proc
    
    mov ax ,@data
    mov ds,ax
    
    ; 2 4 6 8
    ;  
    ;for(i=n to 0) 
    
    mov cx,4
    
     mov ah,2
     mov dl,2
     add dl,48
      
     level1:
     int 21h
     inc dl
     inc dl
      
      
     print " "
     loop level1
    
    
    last:
    printn ""
    print "End program" 
    
    exit:
endp
end main




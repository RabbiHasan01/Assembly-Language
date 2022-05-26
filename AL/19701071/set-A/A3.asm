 
 
include "emu8086.inc" 
.model small

.stack 100h
.data 

.code

main proc
    
    mov ax ,@data
    mov ds,ax
    
    ;1 4 7
    ;for(i=n to 0) 
    
    mov cx,3
    
     mov ah,2
     mov dl,1
     add dl,48
     
     level1:
     int 21h
     inc dl
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





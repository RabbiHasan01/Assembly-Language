
 include "emu8086.inc"
 
 
.model small
.stack 100h

 

.code

main proc   
   
    mov ah,1
    int 21h
    sub al,48
    mov bl,al 
    
    mov bh,bl ;n
    
    inc bl ;n+1
    
    mov al,bl
    mul bh ;ok al=bl*bh n*(n+1)
   
    mov bh,2
 
    div bh  ;n*n(n+1)/2
    
    printn 
    
    print "result "
    
    mov ah,2
    mov dl,al   
    add dl,48
    inc dl   ;n*(n+1)/2+1
    int 21h
    
    exit:
endp
end main
    
    
    
    
    




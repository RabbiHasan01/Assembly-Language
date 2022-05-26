

include "emu8086.inc"
.model small

.stack 100h

.data

.code

main proc
    
    ;x*x+(2+3*x)+x*x=2*x*x+(2+3*x)
    
 
    
    mov al,3
     
    
    mov bh,1 ;bh=x
    mov bl,bh 
        
    mul bh ;ax=al*bh=3.1

 
    add al,2 ;al=(2+3*x)=5 0k
    mov cl,al
    
    mov al,bl
    mul bl  ; x*x  al=1*1=1
    
    mov bh,2
    
    mul bh ;al=2*x*x =2.1.1=2
     
    print "result ="
     
    add  al,cl
    mov dl,al ;7
    add dl,48
    mov ah,2
    int 21h 
    
endp
end main
  
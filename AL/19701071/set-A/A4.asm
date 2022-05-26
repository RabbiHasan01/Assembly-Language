
include "emu8086.inc" 
.model small
.stack 100h
.data
 
 a db ?
   
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov a,0    
    mov dl,a
    add dl,48
    mov ah,2
    int 21h
    
    print " "
    mov bl,1
    mov dl,bl
    add dl,48
    mov ah,2
    int 21h
    
    print " "
    mov cx,5
    
    lp:
    mov bh,bl ;tamp var store 1,1,2,3
    add bl,a  ;1,2,3,5
    
    mov ah,2
    mov dl,bl ;1,2,3 ,5
    add dl,48
    int 21h
    
    
    mov a,bh ;1,1,2,3
    
    print " "
    loop lp
    
    exit:
     
     endp
end main




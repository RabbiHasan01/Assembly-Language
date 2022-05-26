

include "emu8086.inc"
.model small
.stack 100h
.data
 
 x dw 1
 y dw 1
 z dw 1
 
 
 var1 dw 0 
 var2 dw 0
 
 
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ax,x
    mov dx,y
    mul dx
    
    mov dx,ax      
    mov var1,dx ; var1=xy
 
    mov ax,y
    mov dx,z
    mul dx
    
    mov dx,ax      
    add dx,var1    ; var2=xy+yz
    mov var2,dx
     
    
    
    mov ax,x
    mov dx,z
    mul dx
    
    mov dx,ax       
    add dx,var2    ;dx=xy+yz+zx
    
    mov ax,dx
    mul dx         ;ax=dx*dx 
    mov dx,ax
    add dx,48
    mov ah,2
    int 21h 
    
    
    exit:
     
end main





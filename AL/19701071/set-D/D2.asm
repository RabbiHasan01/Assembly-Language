
include "emu8086.inc"
.model small
.stack 100h
.data

x dw 1
y dw 5
z dw 0
   
.code
main proc
    
    
      ;((5x/y)+2x*x)* 
      
    mov ax,@data
    mov ds,ax
    
    mov bx,5
    mov ax,x
    mul bx ;ax=5x
     
    
    mov cx,y
    div cx    ; ax=5x/y  
    mov z,ax  ;1
 
    
    mov ax,x  ;1
    add ax,x  ;ax=2  
    mov bx,x
    mul bx    ; ax=2*1
    
    add ax,z ;ax=2+1
    mov dx,ax
    
    
    mul dx     ;square
    mov dx,ax
    add dx,48 ;ascii-dec
    
    print "Result = "
    mov ah,2
    int 21h
    
    
    
    exit:
endp
end main






include "emu8086.inc"
.model small
.stack 100h
.data

x dw 1
y dw 1
z dw 2
a dw 0
   
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ax,x
    add ax,x
    add ax,x
    add ax,z  ;3X+Z
    mov a,ax
     
     
    mov bx,y
    add bx,y
    mov ax,bx
    sub a,ax  ;3X+Z-2Y
    mov ax,a
    mov bx,a  
    mul bx     ;(3X+Z-2Y)^2
    
    mov dx,ax
    add dx,48 ;ascii-dec
    
    mov ah,2
    int 21h 
    
endp
end main




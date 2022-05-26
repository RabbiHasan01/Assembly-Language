
 include "emu8086.inc"

 
.model small

.stack 100h 

.data 

a dw ?
b dw ?
c dw ?
sum dw ?

.code 

main proc
    
    mov ax,@data
    mov ds,ax
    
 
    
    mov cx,2
    
    lp:
    mov ah,1
    int 21h
    mov ax,48
    mov a,ax
    
    mov ah,1  
    int 21h
    mov ax,48
    mov b,ax
    
     
    cwd  ;convert word to double
     
    ;mov bx,ax
    
    mov bx,2
    mov ax,a   ;ax=ax/bx,dx=ax%bx   
    div bx
    
    cmp dx,0h
    je then
    jne else
    
    then:
    ;printn " even"
    ;inc ax
    ;jmp break
    else:
    ;printn " odd"
    add sum ,ax
    jmp break
    
    break:
     mov ah,2
     mov dx,sum
     add dx,48
     int 21h
        
   loop lp 
      
      ;
      
                      
       
  
  
    
     
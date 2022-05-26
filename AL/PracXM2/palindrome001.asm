



include "emu8086.inc"

.data

str db "abcba" 
l dw 5 
rev db 20 dup(' ')

.code

main proc
    
    mov ax,@data
    mov ds,ax
    mov es,ax
    
    ;mov si,offset str
    
    ;mov di, offset str
    
     mov cx,l
     sub cx,2
     
     lea si,str
     lea di,rev
     add si,l
     sub si,2
     
     
    reverse:
    
    mov al,[si]
    mov [di],al
    inc di
    dec si
    
  
    loop reverse
    
    mov al,[si]
    mov [di],al
    
    inc di
    mov byte ptr[di],"$" 
    
    
    cld
    
    mov cx,l 
    lea si,str
    lea di,rev
    repe cmpsb
    jz palin
    
    notpalin:
    printn "not"
    
    palin:
    
    printn "palin"    






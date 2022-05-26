


.model small

.stack 100h

.data

.code

main proc
    
    ;x*x+(2+3*x)+x*x=2*x*x+(2+3*x)
    
 
    ;sub al,48
    mov al,3
    
    mov bh,2 ;bh=x
        
    mul bh ;ax=al*bh
    
    aam  ;ascii adjust after mul
    
    ;ax=ah:al
    ;10=1:0
    mov ch,ah
    mov cl,al
    
    
    
    
    mov ah,2
    mov dl,ch
    add dl,48
    int 21h
    
    mov ah,2
    mov dl,cl
    add dl,48
    int 21h





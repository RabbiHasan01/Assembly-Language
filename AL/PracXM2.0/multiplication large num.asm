
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 

.data 
    a db 15
    b db 5
.code
main proc
    
    mov ax,@data
    mov  ds,ax
    
    mov al,a
    mov bl,b
    
    mul bl;
    
    aam;
    mov cx,ax
    
    mov dl,ch
    add dl,48
    
    mov ah,2
    int 21h 
    
    mov dl,cl
    add dl,48
    
    mov ah,2
    int 21h

ret





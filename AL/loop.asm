
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 

.model small

.stack 100h

.data
   a db "loop $"
.code

main proc
    
    
    mov ax,@data 
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov ah,2
    mov dl,13
    int 21h
    
    
    mov cx,26 ;cx=use for loop count 
    
    mov ah ,2
    mov dl,'A'
    
    level1: 
    
    int 21h ;print value
    inc dl ;inc=increment dl reg
    
    loop level1 ;26 time loop 
    
    exit:
    mov ah,4ch
    int 21h
endp
end main
    
    
    
     

ret





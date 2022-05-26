
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 

include "emu8086.inc"

.data
    arr db 5,8,4
.code

main proc
    mov ax,@data
    mov ds,ax 
    
    mov si,offset arr
    
    mov cx,3
    loopA:
    
    mov dl,[si]
    add dl,48
    
    mov ah,2
    int 21h 
    
    inc si
    print " "
    loop loopA
    
     

ret





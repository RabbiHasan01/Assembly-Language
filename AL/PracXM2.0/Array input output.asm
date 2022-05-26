
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

.data
   arr db 1,2,3,4,5
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov si,offset arr;
    
    mov cx,5
    
    loop1:
    mov dl,[si]
    add dl,48
     
    mov ah,2
    int 21h  
    inc si
    loop loop1
    



ret





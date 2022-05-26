
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;org 100h

; add your code here
 
;.code
;main proc
    
    mov ah,1
    int 21h
    
    add al,32
    
    mov ah,2
    mov dl,al
    int 21h
   
 
;ret





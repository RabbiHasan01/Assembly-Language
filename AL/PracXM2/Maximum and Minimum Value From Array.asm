
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 

include "emu8086.inc"

.data

arr db 8,3,7,9,4,1

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset arr
     
    
    mov cx ,6
    mov bl,[si]
    mov al,[si]
    
    loopA:
    
    cmp [si],bl   ;individually find small or large
    jle small
    
    ;cmp [si],al
    ;jge large
    
    
    comp:
    inc si
   
    loop loopA
    
    print "Minimum num = "
    mov dl,bl
    add dl,48
    
    mov ah,2
    int 21h 
    printn
    
   ; print "Max value =  "
    
    ;mov dl,al
    ;mov dl,48
    
   ; mov ah,2
   ; int 21h
    
    small:
    mov bl,[si]
    jmp comp
    
   ; large:
   ; mov al,[si]
   ; jmp comp
            
            
    
   
     
    

ret





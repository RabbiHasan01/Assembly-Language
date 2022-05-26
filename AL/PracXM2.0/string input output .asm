
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here    

.data
     str db 100 dup('$') ;str mem_size arr_size duplicate_fun(val)
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov si,offset str
    
    leb1:
         mov ah,1
         int 21h
         
         cmp al,13
         je endcode
         
         mov [si],al
         inc si
         jmp leb1  
         
         
    endcode:
         
         mov dx,offset str
         mov ah,9
         int 21h 
         
         mov ah,4ch
         int 21h 
         main endp
end main
         

ret





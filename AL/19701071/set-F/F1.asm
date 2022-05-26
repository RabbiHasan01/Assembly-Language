
.model small
.stack 100h

.data 
msg dw "Department of C.S.E $"

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
     
    
    mov ah,9h
    lea dx,msg
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
endp
end main







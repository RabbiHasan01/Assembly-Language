

.model small
.stack 100h 

.data   
    str db "Rabbi$"

.code
main proc
    mov sp,@data
    mov ds,sp
    
    ;mov al,'A'
    ;  
    mov ah,1
    lea al,str
    MOV dl,al
    MOV AH,2 ; PRINT FUNC
    INT 21H
    
    
    
    MOV AH, 4ch  
    INT 21H
    
    main endp
end main



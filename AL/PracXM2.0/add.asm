
INCLUDE "EMU8086.INC"

 


.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    PRINTN
    
    MOV AH,1
    INT 21H
    MOV BH,AL 
    
    PRINTN
    
    ADD  BL,BH
    SUB BL,48
    
    MOV DL,BL
    MOV AH,2
    INT 21H 
     
ENDP 
END MAIN
RET

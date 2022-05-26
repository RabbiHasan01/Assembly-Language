
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

INCLUDE "EMU8086.INC"
.DATA
   X DW 69
   Y DW 7

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AX,X
    MOV BX,Y
    
    DIV BX
    
    MOV SP,DX ;STORE  REMINDER
    
    PRINT "Quotient  "
    MOV DX,AX
    MOV AH,2
    ADD DX,48
    INT 21H
    
    PRINTN
    PRINT "Reminder "
    MOV AH,2
    MOV DX,SP
    ADD DX,48
    INT 21H 
    
    HLT

ret





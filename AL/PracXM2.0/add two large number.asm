
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 

INCLUDE "EMU8086.INC"

.data

A DB ?
B DB ?

.CODE
MAIN PROC 
    
    
    MOV AX,@DATA
    MOV DS,AX
    
    PRINT "INPUT 1ST NUM="
    
    MOV AH,1
    INT 21H
    MOV A,AL  
    
    PRINTN
    PRINT "INPUT 2ND NUM=" 
    
    MOV AH,1
    INT 21H
    MOV B,AL
    
    ADD AL,A  ;AX=AH+AL 
    MOV AH,0;CLEAR GARBASE 
    AAA ;ADJUST AFTER ADDITION
    
    ADD AL,48
    ADD AH,48
    
    MOV BX,AX  ;AX TO BX
    
    PRINTN
    PRINT "SUMMATION = " 
    
    MOV DL,BH
    MOV AH,2   ;HIGH BIT
    INT 21H
    
    MOV DL,BL ;LOW BIT
    MOV AH,2
    INT 21H
    
    
    

ret





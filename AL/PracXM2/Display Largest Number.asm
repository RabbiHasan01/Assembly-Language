
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 

include "emu8086.inc"

.data
a db ?
b db ?
c db ?

.code
mov ax,@data
mov ds,ax
print "inputs "
mov ah,1
int 21h
mov a,al
print " "

mov ah,1
int 21h
mov b,al
 print " "
 
mov ah,1
int 21h
mov c ,al

printn
print "Maximum num = "
 
mov bl,a
cmp bl,b
jg A1
jl B1

B1:
mov dl,b
mov bl,b
cmp  bl,c
jg dis
jl C1

C1:
mov dl,c
jmp dis

A1: 
mov dl,a 
cmp bl,c
jg dis
jl C1
 


dis:
mov ah,2
int 21h

 
mov ah,4ch
int 21h

endp
end main

ret





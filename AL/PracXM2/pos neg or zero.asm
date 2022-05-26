
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
include "emu8086.inc"
.data
a db ?
.code 

mov ax, @data
mov ds,ax

print "input "
mov ah,1
mov al,a
int 21h

mov cl,30H

printn
cmp al,cl

jg pos
jl nega
je zero

pos:
printn "positive"
jmp end
 

nega:
printn "negative"
jmp end

zero:
printn "zero"
jmp end

end:


ret





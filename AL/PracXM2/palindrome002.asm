
 

include 'emu8086.inc'
.model small
.stack 100h
.data 
str dw "abxba"
c1 dw 0
c2 dw 4
                                  
                                 
.code
main proc
 mov ax,@data
 mov ds,ax
 
 mov si,offset str
 mov di, offset str
 
 
 
 mov cx,5
     
 pushS:
      push [si]
      
      inc si
      
 loop pushS
 
 
 mov cx,5
 popS:
 
     pop bx 
     
      
  
 loop popS
   
     
 pal:
    printn "pallindrome" 
 jmp end
 
 
  
 no_pal:
       ;printn "not palindrome"
       mov dx,bx
       mov ah,2
       ;int 21h
 jmp end
 
  
 
     
    
        end:
        mov ah,4ch
        int 21h
        main endp
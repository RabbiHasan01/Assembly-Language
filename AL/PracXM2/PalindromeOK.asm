
 

include 'emu8086.inc'
.model small
.stack 100h
.data 
str db "aaabbbbava"  ;input length>2
in1 dw 0 ;1st index
inx dw 9 ;last index
                                  
                                 
.code
main proc
 mov ax,@data
 mov ds,ax
 
 cmp inx,0  ;if string length=1
 je palindrome
 
 
 mov bp,inx ;store
    
    
 check:
 mov bx,in1
 mov dl,str[bx] 
 mov bx, inx
 cmp dl,str[bx]
 je change
 jne notpalin
 
 change:
 
 inc in1
 dec inx
 cmp in1,bp 
 je palindrome
 jne check
 
 
 notpalin:
 printn "not palindrome"
 
 jmp endd
 
 palindrome:
 printn "palindrome"
 jmp endd   
    
        endd:
        mov ah,4ch
        int 21h
        main endp
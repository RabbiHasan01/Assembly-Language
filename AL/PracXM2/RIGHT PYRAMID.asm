
; xxxxxx
;  xxxxx
;   xxxx
;    xxx
;     xx
;      x



include "emu8086.inc"

.data
      a db ?
      b db ?

.code

main proc
    
    mov ax,@data
    
    mov ds,ax
    
    mov cx ,6 
    
    
    mov bh,6
    mov bl,0
    
    mov a,bh
    mov b ,bl
    
    
    l1:
    
    cmp b,0
    je l2
    
    mov ah,2
    mov dl,32
    int 21h
    
    dec b
    
    jmp l1
    
    l2:
    
    mov ah,2
    mov dl,"*"
    int 21h
    
    dec a
    cmp a,0
    jne l2
    
    printn 
    
    dec bh
    
    inc bl
    
    mov a,bh
    mov b,bl
    
    loop l1
    
    
endp
end main










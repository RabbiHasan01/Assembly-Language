
 
 include "emu8086.inc"
 
 .model samll
 .stack 100h
 
 .data
 
 
 .code 
 
 main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    sub al,48 
    mov bl,al 
    
    print " "
    mov ah,1
    int 21h
    sub al,48 
    mov bh,al
     
    print " "
    mov ah,1
    int 21h
    sub al,48 
    mov ch,al
    
    printn
    
    add bl,bh ;bl=bl+bh
    cmp bl,ch  ;bl cmp to ch
    ;jg yes
    jbe wrong
    
    sub bl,bh
    add bl,ch
    cmp bl,bh
    ;jg   yes
    jbe wrong
    
    sub bl,ch
    add bh,ch
    cmp bh,bl
    jbe wrong
    jg yes
    
    
     
    
    yes:
    print "OK" 
    jmp break
    
    wrong:
    print "Wrong!!"
    jmp break
    
    
    break:
    
      
    
    exit:
 endp
 end main
    
     
    
    





; multi-segment executable file template.

data segment
    temp db 10,20,30,40
    msg1 db "BOTH ARRAY ARE SAME$"
    msg2 db "BOTH ARRAY ARE DIFFERENT$"
    ends

stack segment
    dw   128  dup(0)
ends
extra segment
     temp1 db 10,20,30,40 
code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov ax,extra
    mov es,ax
    lea si,temp
    lea di,temp1
    mov cx,05
    repz cmpsb
    cmp cx,0
    jz l1
    lea dx,msg2
    mov ah,9
    int 21h
    ret
    l1:
    lea dx,msg1
    mov ah,9
    int 21h 
   

 
ends

end start ; set entry point and stop the assembler.

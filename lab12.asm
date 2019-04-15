 ; multi-segment executable file template.

data segment
 temp1 db "this is a string"
 temp2 db dup20(0)
 length equ $-temp1
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    lea si,temp1
    mov bx,length
    lea di,temp2+bx
    mov cx,bx
    l1:
    cld
    mov al,[si]
    mov [di],al
    inc si
    dec di
    dec cx
    jnz l1       
ends

end start ; set entry point and stop the assembler.

; multi-segment executable file template.

data segment
 temp1 db 10, 20, 30, 40, 50
 temp2 db dup5(0)
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
    lea di,temp2+4
    mov cx,05
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

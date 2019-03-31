; multi-segment executable file template.

data segment
    temp1 db "hey whats up$"
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
    mov ax,[si]   
ends

end start ; set entry point and stop the assembler.

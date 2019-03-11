
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov ax,1234
mov dx,00
mov cx,10
l1: 
div cx
add bx,dx
mov dx,00
cmp ax,00
jnz l1
ret






; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax ,00
mov cx,10
l1:
add ax,cx
dec cx
cmp cx,00
jnz l1
ret





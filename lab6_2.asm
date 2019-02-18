
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax,0034h
mov bx,0054h
mov cx,0123h
add dx,ax
shl ax,1
add dx,ax
add dx,bx
shl bx,2
add dx,bx
shl cx,1
add dx,cx
ret





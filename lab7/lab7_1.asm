
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax,0042h
mov cx,07h
l1:
add ax,ax
loop l1

ret





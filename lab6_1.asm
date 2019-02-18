
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,08h
mov bl,05h
mov bh,02h
mov cx,0589h
add al,bl
mul bh
add ax,cx


ret





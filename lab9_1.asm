
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax,0x1234
l1:
test al,01h
jnz l2
l3:
rcr ax,1
cmp ax,00h
jnz l1
hlt
l2: inc bx
jmp l3
ret





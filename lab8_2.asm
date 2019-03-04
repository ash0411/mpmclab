
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include emu8086.inc
org 100h
mov ax,1024
mov bx,400
div bx
cmp dx,00
jz l1
mov dx,00
mov ax,1024
mov bx,100
div bx
cmp dx,00
jz l2
mov dx,00
mov ax,1024
mov bx,04
div bx
cmp dx,00
jnz l2

l1:print "leap year"
hlt
l2:print "not leap year"
hlt

ret




                        
                        
                        
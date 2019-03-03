
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include emu8086.inc
org 100h

mov ax,34h
mov bl,02h
div bl
cmp ah,00
jz l2
l1:print 'odd'
l2:print 'even'

ret





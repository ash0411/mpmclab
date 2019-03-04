
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
;8 bit
mov al,04h
mov bl, 02h
mov cl,00h
l1:
sub al,bl
inc cl
cmp bl,al
jle l1   
;16bit
 mov ax,1204h
mov bx, 0102h
mov cl,00h
l2:
sub ax,bx
inc cl
cmp bx,ax
jle l2 


ret





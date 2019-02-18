
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;1's compliment
;8bit 
mov al,23h
not al
;16 bit
mov ax,1234h
not ax
;2's compliment
;8bit
mov al,23h
not al
inc al
;16 bit
mov ax,1234h
not ax
inc ax
;32 bit
mov ax,1234h
mov bx,1235h
not bx
not ax
add ax,1
adc bx,0
ret





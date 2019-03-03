
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;left shift
;8 bit
mov al,02h
sal al,1
;16bit 
mov ax ,0986h
sal ax,1
;right shift 
;8 bit
mov al,10h
sar al,1
;16bit(unsigned)
mov ax,1350h
sar ax,1
;16 bit (signed)
mov ax,-1230h
sar ax,1

ret





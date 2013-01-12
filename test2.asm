ASSUME CS:CODE, DS:DATA
;.MODEL TINY
DATA SEGMENT

DATA ENDS
CODE SEGMENT

;ORG 100h
START:
	mov ax,CODE
	mov ds,ax
	mov ah,9
	mov al,20
	mov dx, OFFSET MSG
	int 21h
	mov ah,4ch
	int 21h
here:
	jmp here
	MSG DB 'Hello World',13,10,'$'
	
CODE ENDS
END START

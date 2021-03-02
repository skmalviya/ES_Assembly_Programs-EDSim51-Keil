; This program is to perform division of 
; two 8-bit numbers using repeatative addition method.

; Example:
; Hex value:
; 06D  /  00B  =  0A  09		binary: 0000 1010   0000 1001
;						    B	        A	
; Decimal value:
; 109 / 11 = OUT: 9   carry: 10

ORG 0000H
MOV A,#6DH	; OPERAND 1
MOV R1,#0BH	; OPERAND 2
MOV R2,#00  	; QUIOTIENT WILL BE STORED HERE
MOV R3,#00  	; REMAINDER WILL BE STORED HERE

; Loop to perform repeatative subtraction
loop: MOV R3,A	; STORE REMAINDER IN R3
SUBB A,R1	; PERFORM SUBTRACTION INSIDE THE LOOP.
INC R2  	; EACH TIME THE QUIOTIENT WILL BE INCREMENTED.
JNC loop	; JUMP IF DIVISOR BECOMES LARGER THAN THE DIVIDEND.
DEC R2		; REDUCE QUIOTIENT BY ONE WHICH ADDED EXTRA IN THE LOOP.
END

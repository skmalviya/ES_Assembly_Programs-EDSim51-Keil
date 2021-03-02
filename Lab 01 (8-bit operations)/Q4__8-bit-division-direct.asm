; This program is to perform division of 
; two 8-bit numbers using direct method.

; Example:
; Hex value:
; 06D  /  00B  =  0A  09		binary: 0000 1010   0000 1001
;						    B	        A	
; Decimal value:
; 109 / 11 = OUT: 9   carry: 10

ORG 0000H
MOV A,#6DH	; OPERAND 1
MOV B,#0BH	; OPERAND 2
DIV AB		; Division in the accumulator.
END

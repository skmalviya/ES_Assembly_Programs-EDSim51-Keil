; This program is to perform multiplication of 
; two 8-bit numbers using direct method.

; Hex value:
; 079 ×  063   =  2E  CB		binary: 0010 1110   1100 1011
;						    B	        A	
; Decimal value:
; 3 × 18 = 54

ORG 0000H
MOV 42H, #079H
MOV 43H, #063H
MOV A,42H	; OPERAND 1
MOV B,43H	; OPERAND 2
MUL AB		; Multiplication in the accumulator
END


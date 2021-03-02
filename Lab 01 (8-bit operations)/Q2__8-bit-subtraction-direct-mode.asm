; This program is to perform subtraction of 
; two 8-bit numbers using direct addressing mode.

MOV 03H, #02H	; OPERAND 1
MOV 05H, #01H	; OPERAND 2
MOV A,03H	; Here direct addressing	
MOV R1,05H	; Here direct addressing
SUBB A,R1	; Subtraction in the accumulator
END

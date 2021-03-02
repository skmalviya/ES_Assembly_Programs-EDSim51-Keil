; This program is to perform subtraction of 
; two 8-bit numbers using register addressing mode.

MOV R0,#02H	; OPERAND 1
MOV R1,#01H	; OPERAND 2
MOV A,R0	; Here register addressing
SUBB A,R1	; Here register addressing as well as subtraction in the accumulator.
END

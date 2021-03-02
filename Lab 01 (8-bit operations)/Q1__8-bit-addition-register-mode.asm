; This program is to perform addition of 
; two 8-bit numbers using register addressing mode.

MOV R0,#01H	; OPERAND 1
MOV R1,#02H	; OPERAND 2
MOV A,R0	; Here register addressing
ADD A,R1	; Here register addressing as well as addition in the accumulator.
END

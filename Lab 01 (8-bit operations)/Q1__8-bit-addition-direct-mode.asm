; This program is to perform addition of 
; two 8-bit numbers using direct addressing mode.

MOV 03H, #01H	; OPERAND 1
MOV 05H, #02H	; OPERAND 2
MOV A,03H	; Here direct addressing	
MOV R1,05H	; Here direct addressing
ADD A,R1	; Addition in the accumulator			
END

; This program is to perform addition of 
; two 8-bit numbers using register-indirect addressing mode.

; Moving data to RAM
MOV 03H, #01H
MOV 05H, #02H

; Mov data from RAM to registers R0 and R1
; then perform addition of two 8-bit numbers
MOV R0,#03H	; OPERAND 1
MOV R1,#05H	; OPERAND 2
MOV A,@R0	; Here register-indirect addressing
ADD A,@R1	; Here register-indirect addressing as well as addition in the accumulator.
END

; This program is to perform multiplication of 
; two 8-bit numbers using repeatative addition method.

; Example:
; Hex value:
; 079 ×  063   =  2E  CB		binary: 0010 1110   1100 1011
;						    B	        A	
; Decimal value:
; 3 × 18 = 54

ORG 0000H
MOV R0,#079H  ;OPERAND 1
MOV R1,#063H  ;OPERAND 2

; CLR A, R6, R7
; R6: will have lSB of the MUL output
; R7: will have MSB of the MUL output
CLR A
MOV R6, #0
MOV R7, #0

; Loop to perform repeatative addition
loop:MOV A,R6   
     ADD A,R1	; Add the LSB.
     MOV R6,A	; and store the the result in R6 as LSB.
     CLR A
     ADDC A,R7	; Add carry.
     MOV R7,A	; and store the result in R7 as MSB.
     DJNZ R0,loop
END

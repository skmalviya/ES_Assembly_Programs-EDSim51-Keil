; Program to multiply two 8-bit numbers using Booth algorithm

; Help Link1: https://www.studytonight.com/computer-architecture/booth-multiplication-algorithm
; Help Link2: https://www.geeksforgeeks.org/booths-multiplication-algorithm/
; Help Link3: https://people.cs.pitt.edu/~jmisurda/teaching/cs447/examples/Booth%20Example.pdf

MOV 20H, #06H
MOV 21H, #02H

MOV R0,0x20
MOV R1,0x21
; Initialising the upper and the lower bytes of the product to be 0
MOV A,#00
MOV B,#00
; If any of the operand is 0 then directly output the product
;CJNE R0,#0,NEXT
;JMP EXIT
;NEXT: CJNE R1,#00,INIT
;JMP EXIT
; Else compute the product
INIT: MOV A,R1
      MOV R1,#8
      CLR C
LOOP: MOV R2,A
      ANL A,#1	; Check for the last bit of the number.
      MOV R3,A
      ADDC A,#0
      CJNE A,#1,ASHR	; Jump to ASHR (Arithmetic Shift Right) if the last booth bit and current LSB are same e.g. 00,11.
      MOV A,B		; Otherwise go for A=A+Multiplicant or A=A-Multiplicant
      CJNE R3,#0,SUB	; Jump to SUB if the last booth bit was 0 and current LSB is 1 e.g. 01.
      ADD A,R0		; A=A+Multiplicant when the last booth bit was 1 and current LSB is 0 e.g. 10.
      JMP MOVB
      SUB: SUBB A,R0	; A=A-Multiplicant when the last booth bit was 0 and current LSB is  e.g. 01.
      MOVB: MOV B,A
            JMP ANDOP
      ASHR: MOV A,B	; Perform the Arithmatic Right Shift
            ANDOP: ANL A,#0x80
            RLC A
            MOV A,B
            RRC A
            MOV B,A
            MOV A,R2
            RRC A 	; Perform RRC on A and go for the next iteration.
      DJNZ R1,LOOP

EXIT: MOV 0x22,A
      MOV 0x23,B
      end

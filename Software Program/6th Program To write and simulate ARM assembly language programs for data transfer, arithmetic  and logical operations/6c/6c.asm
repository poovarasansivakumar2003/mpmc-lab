        AREA    PROG2, CODE, READONLY    ; Define the code section
        ENTRY                            ; Entry point for the program

START   LDR     R1, =0x00000003          ; Load value 3 into R1
        LDR     R2, =0x00000007          ; Load value 7 into R2
        AND     R3, R1, R2               ; Perform bitwise AND, result in R3
        ORR     R4, R1, R2               ; Perform bitwise OR, result in R4
        EOR     R5, R1, R2               ; Perform bitwise XOR, result in R5

STOP    B       STOP                     ; Infinite loop to stop execution

        END                              ; End of the program

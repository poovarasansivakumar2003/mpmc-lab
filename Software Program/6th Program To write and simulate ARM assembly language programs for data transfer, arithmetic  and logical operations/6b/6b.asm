        AREA    PROG2, CODE, READONLY    ; Define a read-only code section
        ENTRY                            ; Entry point for the program

START   LDR     R1, =0x00000006          ; Load value 6 into R1
        LDR     R2, =0x00000001          ; Load value 1 into R2
        ADD     R5, R1, R2               ; Add R1 and R2, store in R5
        SUB     R6, R1, R2               ; Subtract R2 from R1, store in R6
        MUL     R7, R1, R2               ; Multiply R1 and R2, store in R7

STOP    B       STOP                     ; Infinite loop to stop execution

        END                              ; End of the program

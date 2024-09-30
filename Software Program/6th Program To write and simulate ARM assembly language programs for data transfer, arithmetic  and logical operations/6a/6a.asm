        AREA    PROG1, CODE, READONLY    ; Define the code section
        ENTRY                            ; Entry point for the program

START   LDR     R2, =0x05                  ; Initialize loop counter (copy 5 items)
        LDR     R0, =SOURCE              ; Load the source address into R0
        LDR     R1, =DEST                ; Load the destination address into R1

UP      LDR     R3, [R0], #4             ; Load a word from source, post-increment R0
        STR     R3, [R1], #4             ; Store the word to destination, post-increment R1
        SUBS    R2, R2, #1               ; Decrement loop counter in R2
        BNE     UP                       ; If not zero, branch to UP

STOP    B       STOP                     ; Infinite loop to stop execution

        ; Data Sections
        AREA    SOURCE, DATA, READONLY   ; Read-only data section
        DCD     0x10, 0x20, 0x30, 0x40, 0x50  ; Source data

        AREA    DEST, DATA, READWRITE    ; Writable data section for destination
        DCD     0x00, 0x00, 0x00, 0x00, 0x00  ; Destination initialized to zeros

        END

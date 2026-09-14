*-----------------------------------------------------------
* Title      :  practical_04_part1.x68
* Written by :  Callum Matthews C00306572
* Date       :  03/02/26
* Description:  Demonstrate adding and subtracting bytes in memory, using address register a1 to point to memory address
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    ; Move health to Memory location $3000
    MOVE.B #100, $3000
    
    ; load memory address $3000 in address register A1
    LEA $3000, A1
    
    ; Hit by NPC
    SUB.B #20, (A1)
    
    ; Pickup health found
    ADD.B #10, (A1)
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

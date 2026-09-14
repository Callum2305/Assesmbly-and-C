*-----------------------------------------------------------
* Title      : practical_02_part2.x68
* Written by : Callum Matthews C00306572
* Date       : 02/01/26
* Description: Show how longwords are 00000000 long, and word is 0000 long, so when we
*              append the value .L 00 00 00 64 with a .W of 00 64, we get 00 64 00 64 as we
*              write from left to right, top end.
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.L #%100, D0
    MOVE.L #$100, D1
    MOVE.L #100, D2
    
    MOVE.L D0, $3000
    MOVE.L D1, $3010
    MOVE.L D2, $3020
    
    MOVE.W #100, $3020
    MOVE.W #$100, $3010
    MOVE.W #%100, $3000
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

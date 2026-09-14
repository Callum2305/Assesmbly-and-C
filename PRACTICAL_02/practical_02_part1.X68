*-----------------------------------------------------------
* Title      :  practical_02_part1.X68
* Written by :  Callum Matthews C00306572
* Date       :  20/01/26
* Description:  Move different data tpes into memory and examine the changes made
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.L #%100, D0    ;move long of binary 100 into d0
    MOVE.L #$100, D1    ;move long of hexidecimal 100 into d1
    MOVE.L #100, D2     ;move literal decimal of 100 into d2
    
    MOVE.L D0, $3000    ;move contents of d0 into address $3000
    MOVE.L D1, $3010
    MOVE.L D2, $3020
    
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

*-----------------------------------------------------------
* Title      :  practical_03_part1.x68
* Written by :  Callum Matthews
* Date       :  27/01/26
* Description:  Demonstrate loading effective into address register
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA $4000, A1       ;LOAD EFFECTIVE ADDRESS 4000 into A1
    MOVE.B #100, (A1)   ;Move byte of 100 decimal into A1
    
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

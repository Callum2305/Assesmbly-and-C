*-----------------------------------------------------------
* Title      : practical_06_part4.x68
* Written by : Callum Matthews C00306572
* Date       : 24/02/26
* Description: What is the purpose of stack pointer?
*              It is used to indicate the location of the last
*              item put into the stack. Seen in A7
*              First value in will be the last value out as
*              stack moves downwards.
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
    LEA $4000, SP
    
    MOVE.B #1, -(SP)    ; Goes into address register A7
    MOVE.B #2, -(SP)    ; decrements SP by 1 each time
    MOVE.B #3, -(SP)
    MOVE.B #4, -(SP)

    MOVE.B (SP)+, D1    ; increment D1 values from SP
    MOVE.B (SP)+, D1
    MOVE.B (SP)+, D1
    MOVE.B (SP)+, D1
    
END:
* Put program code here

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

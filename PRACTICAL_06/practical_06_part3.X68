*-----------------------------------------------------------
* Title      : practical_06_part3.x68
* Written by : Callum Matthews C00306572
* Date       : 24/02/26
* Description: Purpose of address register 7: STACKPOINTER ADDRESS
*   demonstrate how first number in will be last number out, using stack decrementation
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
    LEA $4000, A7
    
    MOVE.B #1, -(A7)    ;decrease a7, then store new value at that adddress
    MOVE.B #2, -(A7)
    MOVE.B #3, -(A7)
    MOVE.B #4, -(A7)
    
    MOVE.B (A7)+, D1    ; read value at address a7, then increment and store in d1
    MOVE.B (A7)+, D1
    MOVE.B (A7)+, D1    ; every MOVE.B ovrwrites d1
    MOVE.B (A7)+, D1
    
    ; order in: 4,3,2,1 order out 1,2,3,4
    ; last one in will be first out
END:
* Put program code here

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

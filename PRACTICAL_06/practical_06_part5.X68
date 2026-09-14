*-----------------------------------------------------------
* Title      : practical_06_part5.x68
* Written by : Callum Matthews C00306572
* Date       : 24/02/26
* Description: What observations can be made viewing the stack?
*              You can see each value inputted into the stack via A1, A2 and SS
*              Stack enables subroutine calls and returns
*-----------------------------------------------------------

START:                  ; first instruction of program
    MOVE.L #HEALTH, -(SP)
    JSR GAME_LOOP       ; jump to subroutine, pushes return address onto stack and jumps to subroutine label
    BSR HEADS_UP_DISPLAY
    BRA END
    
GAME_LOOP:
    MOVEA.L 4(SP), A1
    SUB.B #10, (A1) ; subtract 10 from health, leaving 90
    RTS
    
HEADS_UP_DISPLAY:
    LEA MESSAGE, A1
    MOVE.B #14, D0
    TRAP #15
    MOVE.B HEALTH, D1
    MOVE.B #3, D0
    TRAP #15
    RTS
    
END:
    
HEALTH: DC.B 100
MESSAGE: DC.B 'HEALTH:', 0 
* Put program code here

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

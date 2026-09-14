*-----------------------------------------------------------
* Title      : practical_06_part6.x68
* Written by : Callum Matthews C00306572
* Date       : 24/02/26
* Description: Other than push and pop, how else can you move around stack?
*              Direct stack pointer adjustment
*              If you use other methods, where you manually manipulate the stack,
*              you can cause stack corruption like reading the wrong values, overwriting return address,
*              and crash the program. 
*              If stp is adjusted wrong, rts may jump to incorrect or wrong memory.
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
    MOVE.L #HEALTH, -(SP) ;Note postion in stack
    
    MOVE.B #14, D0  ;Player X
    MOVE.B #14, D1  ; Enemy X
    
    MOVE.L D0, -(SP)
    MOVE.L D1, -(SP)
    
    JSR GAME_LOOP
    BSR HEADS_UP_DISPLAY
    BRA END_GAME
    
GAME_LOOP:
    MOVE.L 4(SP), D1    ; Note depth in stack
    MOVE.L 8(SP), D0    : Note depth in stack
    
    CMP D0, D1
    BEQ DAMAGE
    BRA NO_DAMAGE
    
DAMAGE:
    MOVEA.L 12(SP), A1  ; Note depth in stack
    SUB.B #10, (A1)
    
NO_DAMAGE:
    RTS
    
HEADS_UP_DISPLAY:
    MOVE.B HEALTH, D1
    MOVE.B #3, D0
    TRAP #15
    RTS
    
END_GAME
* Put program code here

    SIMHALT             ; halt simulator

* Put variables and constants here
HEALTH: DC.B 100
    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

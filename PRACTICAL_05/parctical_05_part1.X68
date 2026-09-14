*-----------------------------------------------------------
* Title      :  practical_05_part1.x68
* Written by :  Callum Matthews
* Date       :  10/02/26
* Description:  simple game design, showcase CMP and BEQ etc
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

INITIALISE:
    MOVE.B #3, D0       ; initialise D0 to 3, health counter
    MOVE.B #0, D1       ; Initialise D1 to 0, points counter
    
GAME_LOOP:
    CMP.B #1, D0        ; compare d0 with 1, so check if equal 
    BNE GAME_POINTS     ; Branch if not equal, so if d0 is not equal to one, jump here
    BEQ GAME_OVER       ; bracnch if equal, so if d0 equal 0, jump here as game over
    
GAME_POINTS
    ADD.B #10, D1       ; add 10 hex in bytes to d1
    SUB.B #1, D0        ; subtract 1 hex in byte from d0
    BRA GAME_LOOP       ; unconditional jump to game_loop
    
GAME_OVER:
                        ; game over, nothing here so end
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

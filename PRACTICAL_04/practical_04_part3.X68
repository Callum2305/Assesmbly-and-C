*-----------------------------------------------------------
* Title      :  practical_04_part3.x68
* Written by :  Callum Matthews C00306572
* Date       :  03/02/26
* Description:  Here we use subroutines. Along with RTS and BRA.
*               RTS: Will take you back to the to where you first called a subroutine
*               BRA: means to jump to a new location in the code, esentially Go To line that begins with what was specified after BRA
*               BSR: means to jump to a subroutine
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    ; move health to memory location $3000
    MOVE.B #100, $3000
    
    ; load memory address $3000 into A1
    LEA $3000, A1
    
    ; Branch to Taking Damage
    BSR TAKING_DAMAGE
    
BACK_IN_THE_GAME:
    ; Lets Help this player out
    BSR HEALTH_PICKUP
    BRA GAME_END
    
TAKING_DAMAGE:
    ; Hit by NPC
    SUB.B #20, (A1)
    BRA BACK_IN_THE_GAME
    
HEALTH_PICKUP:
    ; Pickup health found
    ADD.B #10, (A1)
    RTS
    
GAME_END:
    ; Game Over
    MOVE.B #$00, (A1)
    
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

*-----------------------------------------------------------
* Title      :  practical_04_part4.x68
* Written by :  Callum Matthews C00306572
* Date       :  03/02/26
* Description:  Simple game simulation using subroutines,
*               registers, arithmetic, logical operations
*               and branching. I do not really know how games work admittidly.
*-----------------------------------------------------------


    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    LEA HEALTH, A3   ;load address of health
    LEA BOSSHEALTH, A4
    LEA PLAYERXPOS, A5
    LEA PLAYERYPOS, A6
    LEA BOSSXPOS, A1
    LEA BOSSYPOS, A2
    LEA POINTS, A0
   
    BSR TAKING_DAMAGE   ; branch to taking damage
    
BACK_IN_THE_GAME:
    SUB.B #10, (A4) ; Take 10 hp from boss
    BSR HEALTH_PICKUP       ; branch to health pickup
    MOVE.B #100, (A0)   ; move 100 points into score
    BRA GAME_END        ; brnach to game end
   
TAKING_DAMAGE:
    MOVE.W #50, (A1)    ; move boss x pos by 50 decinal
    MOVE.W #30, (A2)    ; move boss y pos by 30 decimal
    SUB.B #20, (A1)      ; Hit by NPC
    BRA BACK_IN_THE_GAME    ; branch to back in the game
    
HEALTH_PICKUP:
    ADD.B #10, (A3)     ; Pickup health found
    MOVE.B #30, (A5)    ; move player x pos by 30 deci
    MOVE.B #40, (A6)    ; move player y pos by 40 decimal
    RTS   
    
GAME_END:
    ; Game Over
    MOVE.B #$00, (A3)
    SIMHALT             ; halt simulator

* Put variables and constants here
HEALTH dc.b $64
BOSSHEALTH dc.l $3E8
PLAYERXPOS dc.b $64
PLAYERYPOS dc.b $64
BOSSXPOS dc.w $20
BOSSYPOS dc.w $20
POINTS dc.b $14
    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

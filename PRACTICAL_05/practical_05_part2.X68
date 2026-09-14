*-----------------------------------------------------------
* Title      :  practical_05_part2.x68
* Written by :  Callum Matthews
* Date       :  10/02/26
* Description:  basic collions detection, count d2 up by 1 and once it equals d1, game over
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA PLAYER_POSITION, A1 ; load effective address to a1,
    LEA ENEMY_POSITION, A2
    
    MOVE.B (A1), D0     ; move a1 contents to D0, now player position
    MOVE.B (A2), D1     ; move a2 contents to d1, now enemy position
    
COLLISION_CHECK:
    CMP D0, D1        ; compare d0 to d1
    BLT NEXT_MOVE       ; if d0 is less than d1
    BEQ COLLISION       ; when d1 is equal to d0, branch to collision
    
NEXT_MOVE:
    ADD.B #1, D0               ; increment d0 by 1, d0 basically slowly counts upward
    BRA COLLISION_CHECK         ; unconditional jump to collision check
    
COLLISION:
    BRA GAME_OVER               ; when D2 is equal to D1, immediate game over as it counts as a collision
    
GAME_OVER:
    SIMHALT             ; halt simulator

* Put variables and constants here
PLAYER_POSITION: DC.B 10, 15
ENEMY_POSITION: DC.B 50, 55

    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

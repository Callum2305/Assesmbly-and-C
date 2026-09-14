*-----------------------------------------------------------
* Title      :  practical_03_part4.x68
* Written by :  Callum Matthews C00306572
* Date       :  27/01/26
* Description:  using long, byte and word, change values declared below to update positions and score
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
    
    SUB.B #10, (A3)     ; subtract 10 from player health
    MOVE.L $64, (A4)    ; move 10 into boss health
    MOVE.B #30, (A5)    ; move player x pos by 30 deci
    MOVE.B #40, (A6)    ; move player y pos by 40 decimal
    MOVE.W #50, (A1)    ; move boss x pos by 50 decinal
    MOVE.W #30, (A2)    ; move boss y pos by 30 decimal
    MOVE.B #100, (A0)   ; move 100 points into score
    
    

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

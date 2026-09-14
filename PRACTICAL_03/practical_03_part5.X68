*-----------------------------------------------------------
* Title      :  practical_03_part5.x68
* Written by :  Callum Matthews C00306572
* Date       :  28/01/26
* Description:  addition. Will use an array defined below, achievement points, and traverse it to add each number into d0. 
*               d2 is temporary holding values here, gets over written each time.
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    *START:
    MOVEA.L #ACHIEVEMENT_POINTS, A1     ;move address of achievemnt points into A!, our pointer
    MOVE.L #0, D0                       ; initialise D0 to value of 0
    
    MOVE.L (A1)+, D2    ; move first number of array in A1, achievement points, into d2
    ADD.L D2, D0        ; add value of d2 to d0, and update total in d0
    
    MOVE.L (A1)+, D2    ; add next value of array in A1, achievment points, into d2, overwritting what was there previously
    ADD.L D2, D0        ; add value of d2 into d0, update total
    
    MOVE.L (A1)+, D2
    ADD.L D2, D0
    
    MOVE.L (A1)+, D2
    ADD.L D2, D0
    
    MOVE.L (A1)+, D2
    ADD.L D2, D0
    
    ACHIEVEMENT_POINTS: DC.L 5, 10, 15, 20, 30
    ;here is where we specify the values of achievement points, these will add up tp 80 in total in d0 at the end.

    END    

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

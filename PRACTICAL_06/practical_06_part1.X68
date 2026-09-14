*-----------------------------------------------------------
* Title      :  practical_06_part1.x68
* Written by :  Callum Matthews C00306572
* Date       :  24/02/26
* Description:  Load a message into memory using trap / system call. Message viewable in memory tab, not terminal.
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
    ;Move trap task to d0
    MOVE.B #2, D0
    ;Interrupt and Trap Task
    TRAP #15
    
    LEA MESSAGE, A1
    MOVE.B #13, D0
    TRAP #15
    
END_PROG:

MESSAGE: DC.B 'Trap task Test', 0



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

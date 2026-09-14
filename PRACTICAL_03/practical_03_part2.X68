*-----------------------------------------------------------
* Title      :  practical_03_part2.x68
* Written by :  Callum Matthews C00306572
* Date       :  27/01/26
* Description:  Again using LEA, this time we subract a byte if 10 decimal from the memory address stored in address register A2 and then store the result back in said address.
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA $4000, A2       ;Load effective address of 4000 into A2
    MOVE.B #100, (A2)   ;move a byte of 100 decimal (64) into address register A2
    SUB.B #10, (A2)     ; subtract 10 decinal from address in address register a2 and store result back in same location (in this case $4000)

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

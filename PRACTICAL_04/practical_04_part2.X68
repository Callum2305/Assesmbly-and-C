*-----------------------------------------------------------
* Title      :  practical_04_part2.x68
* Written by :  Callum Matthews C00306572
* Date       :  03/02/26
* Description:  Demonstrate AND OR EOR operations
*               In AND, resulting bit is 1 only if both source and destination bits are 1. So 1 and 1 gives 1, 1 and 0 gives 0
*               In OR, resulting bit is 1 if either source or destination bit is 1. So 1 and 0 gives 1, 1 and 1 gives 1, 0 and 0 gives 0
*               In EOR, resulting bit is 1 only if source or destination have different bit, so 0 and 1 will give 1, 1 and 1 will give 0. 0 and 0 will give 0
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    ; Move Health to Memory location $3000
    MOVE.B #100, $3000
    
    ; Move location of player into Data Register
    ; X first Byte 0 to 15
    ; Y second byte 0 to 15
    MOVE.B #$12, D2
    
    ; Move locaion of NPC into data register
    ; X first byte 0 to 15
    ; Y second byte 0 to 15
    MOVE.B #$22, D3
    
    ; Bitwise AND D2 and D3
    ; AND gives 1 if source and destination bit is 1. In this case D3 becomes $02
    AND.B D2, D3
    
    ; Bitwise OR D2 with D3
    OR.B D2, D3
    
    ; D3 will become $32 as OR gives a bit of 1 if either source or desitination bit is 1
    ; Now d3 becomes $12 after OR operation
    
    ; Bitwise EOR Exclusive OR operation
    EOR.B D2, D3
    ; if either 1 bit is 1, output is 1, however if both bits are 1, output is 0
    ; Now D3 will be 0 as both values D2 and D3 have the same bits set as 1, so now output is 0
    
    ; Load memory address $3000 into Address Register A1
    LEA $3000, A1
    
    ; Hit by NPC 
    SUB.B #20, (A1)
    
    ; Pickup health found
    ADD.B #10, (A1)

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

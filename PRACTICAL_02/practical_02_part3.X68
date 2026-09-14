*-----------------------------------------------------------
* Title      : practical_02_part3.x68
* Written by : Callum Matthews C00306572
* Date       : 20/01/26
* Description: same as before, append longwords with words, so the first 00 00 from left  get appended
*               but then append with a byte, which appends the first 00 from left, so 00000004 
*               becomes 00040004 and then 8f040004
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.L #%100, D0    ; move binary 100 (4 in hex and dec) into d0
    MOVE.L #$100, D1    ; move hex 100 (256 in dec) into d1
    MOVE.L #100, D2     ; move decimal 100 (64 in hex) into d2
    
    MOVE.L D0, $3000    ; move value in d0 into memory address 3000 and so on
    MOVE.L D1, $3010
    MOVE.L D2, $3020
    
    MOVE.W #100, $3020  ; move a word of 100 (64 hex) decimal into address 3020
    MOVE.W #$100, $3010 ; move  word of 100 hex (256 dec) into address 3010
    MOVE.W #%100, $3000 ; move a word of 100 binary (4 in hex and dec)
    
    MOVE.B #100, $3020  ; move byte of 100 decimal (64 hex)into 3020
    MOVE.B #$64, $3010  ;move byte of 64 hex into 3010
    MOVE.B #%10001111, $3000    ; move byte of inary 10001111 (8f) into address 3000
    
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

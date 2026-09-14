*-----------------------------------------------------------
* Title      : practical_02_part4.x68
* Written by : Callum Matthews C00306572
* Date       : 20/01/26
* Description: Same as part 3, but more examples to see changes in memory addresses as we append. So move longs, words and bytes into same address without first clearing address
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.L #%100, D0    ; move binary 100 (4 in hex and dec) into d0
    MOVE.L #$100, D1    ; move hex 100 (256 in dec) into d1
    MOVE.L #100, D2     ; move decimal 100 (64 in hex) into d2
    MOVE.L #%1111, D3   ; move binary 1111 into d3 (F in hexi)
    MOVE.L #50, D4      ; move decimal 50 (32 in hexi) into D4
    
    MOVE.L D0, $3000    ; move value in d0 into memory address 3000 and so on
    MOVE.L D1, $3010
    MOVE.L D2, $3020
    MOVE.L D3, $3030    ;move contents of d3 into address 3030 
    MOVE.L D4, $3040    ; move contents of d4 into address 3040
    
    MOVE.W #50, $3040   ; move a word of 50 decimal (32 hex) into address 3040
    MOVE.W #%1111, $3030 ;move a word of 1111 binary into memory address 3030
    MOVE.W #100, $3020   ; move a word of 100 (64 hex) decimal into address 3020
    MOVE.W #$100, $3010 ; move  word of 100 hex (256 dec) into address 3010
    MOVE.W #%100, $3000 ; move a word of 100 binary (4 in hex and dec)
    
    MOVE.B #50, $3040       ; move a byte of 50 decimal (32 hex) into address 3040
    MOVE.B #%1111, $3030    ; move a byte of 1111 binary (f in hex) into memory address 3030
    MOVE.B #100, $3020      ; move byte of 100 decimal (64 hex)into 3020
    MOVE.B #$64, $3010      ;move byte of 64 hex into 3010
    MOVE.B #%10001111, $3000    ; move byte of Binary 10001111 (8f) into address 3000
    
    MOVE.L #500, $3040       ; move long 500 decimal (1F4 in hexi) into 3040
    MOVE.L #%1011, $3030    ; move long 1011 binary (B in hexi) into address 3030
    MOVE.L #110, $3020      ; move long 110 decimal (6E in hexi) into address 3020
    MOVE.L #$32, $3010      ; move long 32 hexi into address 3010
    MOVE.L #%10101111, $3000    ; mmove long 10101111 (AF in hexi) binary into address 3000
    

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

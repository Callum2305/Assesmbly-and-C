*-----------------------------------------------------------
* Title      : practical_03_part3.x68
* Written by :  Callum Matthews C00306572
* Date       :  27/01/26
* Description:  Declare constant HEALTH and reserve 1 byte of memory. This is ou first time seeing the stack in use. 64 written to stack in 100E and then replaced with 5A when subtracing 10 decimal
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    LEA HEALTH, A3  ; load address of label HEALTH into A3, so location where 64hex is stored
    SUB.B #10, (A3) ;subtract 10 decimal from the value of health which is currently 100, then store the result of this (90decimal) back into health

    SIMHALT             ; halt simulator

HEALTH dc.b $64         
                        ;declare a label called health, which is stored in stack 100E, and we load it into A3 so we can subtract 10 decimal, but right here we store the value of 64 hex which is 100 decimal


    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

*-----------------------------------------------------------
* Title      : TRAP #15 Task Library (EASy68K)
* Written by : Callum Matthews C00306572
* Date       : 25/02/26
* Description: Demonstrate different Trap Tasks
*              Note, i did this part last, i had completed part 1 and parts 3-6 before doing part 2, hence uploading last
*              I do not have all trap codes done as i couldnt understand them all
*              using LEA to load address of messages, then TRAP #15, along with MOVE
*-----------------------------------------------------------
 
        ORG     $1000

START:


        ; 11 Clear screen

        MOVE.W  #$FF00,D1
        MOVE.B  #11,D0          ; here we use code 11 to clear screen
        TRAP    #15


        ; 13 Print NULL terminated string WITH CR/LF

        LEA     Msg13,A1
        MOVE.B  #13,D0
        TRAP    #15


        ; 14 Print NULL terminated string NO CR/LF

        LEA     Msg14,A1
        MOVE.B  #14,D0
        TRAP    #15

        LEA     CRLF,A1
        MOVE.B  #14,D0
        TRAP    #15
        
        ; 0 Print length-limited string WITH CR/LF
        ;    A1 string, D1.W = length

        LEA     LenStr,A1
        MOVE.W  #12,D1                 ; print first 12 bytes ("Length print")
        MOVE.B  #0,D0
        TRAP    #15


        ; 1 Print length-limited string NO CR/LF

        LEA     LenStr,A1
        MOVE.W  #12,D1
        MOVE.B  #1,D0
        TRAP    #15

        LEA     CRLF,A1
        MOVE.B  #14,D0
        TRAP    #15


        ; 5 Read single char into D1.B
  
        LEA     Msg5,A1
        MOVE.B  #14,D0
        TRAP    #15

        MOVE.B  #5,D0
        TRAP    #15                     ; D1.B now has char


        ; 6 display single char in D1.B (echo it back)

        LEA     Msg6,A1
        MOVE.B  #14,D0
        TRAP    #15

        MOVE.B  #6,D0
        TRAP    #15

        LEA     CRLF,A1
        MOVE.B  #14,D0
        TRAP    #15



        ; 8 Time in hundredths since midnight -> D1.L

        LEA     Msg8,A1
        MOVE.B  #14,D0
        TRAP    #15

        MOVE.B  #8,D0
        TRAP    #15                     ; D1.L = time

        MOVE.B  #3,D0                   ; print number smallest field
        TRAP    #15

        LEA     CRLF,A1
        MOVE.B  #14,D0
        TRAP    #15


        ;4 Read number into D1.L

        LEA     Msg4,A1
        MOVE.B  #14,D0
        TRAP    #15

        MOVE.B  #4,D0
        TRAP    #15                     ; D1.L = number


        ;3 Print signed number (smallest field)

        LEA     Msg3,A1
        MOVE.B  #14,D0
        TRAP    #15

        MOVE.B  #3,D0
        TRAP    #15

        LEA     CRLF,A1
        MOVE.B  #14,D0
        TRAP    #15



        ;17 Combo: print string (A1) then print D1.L

        LEA     Msg17,A1
        MOVE.B  #17,D0
        TRAP    #15

        LEA     CRLF,A1
        MOVE.B  #14,D0
        TRAP    #15


        ;18 Combo: print string (A1) then read number into D1.L

        LEA     Msg18,A1
        MOVE.B  #18,D0
        TRAP    #15

        LEA     Msg18Echo,A1
        MOVE.B  #17,D0                  ; print label then number (D1.L)
        TRAP    #15

        LEA     CRLF,A1
        MOVE.B  #14,D0
        TRAP    #15

        ;11 Cursor positioning (row/col)
        ;D1.W high byte = COL, low byte = ROW

        MOVE.W  #$0502,D1               ; COL=5, ROW=2
        MOVE.B  #11,D0
        TRAP    #15

        LEA     MsgCursor,A1
        MOVE.B  #13,D0
        TRAP    #15




        ;19 Key state / scan code

        LEA     Msg19,A1
        MOVE.B  #13,D0
        TRAP    #15

        CLR.L   D1
        MOVE.B  #19,D0
        TRAP    #15                     ; D1.B = last key pressed code

        LEA     Msg19Echo,A1
        MOVE.B  #14,D0
        TRAP    #15

        MOVE.B  #6,D0
        TRAP    #15                     ; display it (may be non-printable for special keys)

        LEA     CRLF,A1
        MOVE.B  #14,D0
        TRAP    #15


        ;9 Exit

        MOVE.B  #9,D0
        TRAP    #15

        SIMHALT


    ; Messages i will load, numbered to matche codes

Msg13       DC.B    'Task 13: NULL string with CR/LF',0

Msg14       DC.B    'Task 14: NULL string no CR/LF',0

LenStr      DC.B    'Length print DEMO...',0

Msg5        DC.B    'Task 5: press ONE key: ',0

Msg6        DC.B    'Task 6: you pressed: ',0

Msg8        DC.B    'Task 8: time (hundredths since midnight) = ',0

Msg4        DC.B    'Task 4: enter a number: ',0

Msg3        DC.B    'Task 3: number printed = ',0

Msg17       DC.B    'Task 17: number again = ',0

Msg18       DC.B    'Task 18: enter another number: ',0
Msg18Echo   DC.B    'You entered = ',0


MsgCursor   DC.B    'Task 11: cursor moved here (row2,col5)',0


Msg19       DC.B    'Task 19: last key code = ',0
Msg19Echo   DC.B    'Key code char = ',0

CRLF:   DC.B    $0D,$0A,0 ; carrage return and line feed


        END     START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

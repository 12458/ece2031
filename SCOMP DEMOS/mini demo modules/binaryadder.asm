Demo1_Loop:
        LOADI   0
        OUT     LEDToggle       ; Turn off all LEDs
        LOADI   255

AdderLoop:                     
        IN      KeyIO           ; read key input
        STORE   KeyInput

        JZERO   AdderLoop       ; if no keys have been pressed, remain in loop
Demo1_Release:
        CALL checkbuttonzero    ; loop until key is release to prevent multiple inputs

        IN      Switches        ; Grab input value from Switches
        ADD     AdderSum             ; Load current running sum (does nothing on first loop)
        AND     10bits                 ; Mask relevant bits 
        STORE   AdderSum
        OUT     LEDToggle       ; Display new sum on LEDs
        JUMP    AdderLoop       ; Jump to InputLoop to wait for next value


checkbuttonzero:                ; subroutine to check for key release
        IN KeyIO
        JPOS checkbuttonzero
        RETURN







Input:          DW 0
CurLEDADDR:     DW 0
NewBright:      DW 0
KeyInput:       DW 0

B0:             DW 1
B1:             DW 2
B2:             DW 4

PositiveDelta:  DW 32
NegativeDelta:  DW -32

AdderSum:       DW 0
AdderInput:     DW 0

10bits:         DW 1023


Switches:       EQU 000
KeyIO:          EQU &H02D
LEDToggle:      EQU &H020
LEDGlobal:      EQU &H021

LEDBaseADDR:    EQU &H022
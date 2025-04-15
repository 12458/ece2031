
;  ██████  ██       ██████  ██████   █████  ██          ██       ██████   ██████  ██████  
; ██       ██      ██    ██ ██   ██ ██   ██ ██          ██      ██    ██ ██    ██ ██   ██ 
; ██   ███ ██      ██    ██ ██████  ███████ ██          ██      ██    ██ ██    ██ ██████  
; ██    ██ ██      ██    ██ ██   ██ ██   ██ ██          ██      ██    ██ ██    ██ ██      
;  ██████  ███████  ██████  ██████  ██   ██ ███████     ███████  ██████   ██████  ██
LOADI &H3FF
OUT LEDToggle           ; turn all LEDs on
Global_Loop:
        IN      KeyIO
        STORE   KeyInput                ; grab key state from Key peripheral

        JZERO   Global_Loop             ; only exit loop once a key has been pressed
Global_Release:
        IN      KeyIO                   ; check current key input state
        JPOS    Global_Release          ; continue looping unless key has been released

        LOAD    KeyInput                ;
        AND     B0                      ; jump to Increase if Key1 is pressed
        JPOS    IncreaseGlobal          ;

        LOAD    KeyInput                ;
        AND     B1                      ; jump to Decrease if Key2 is pressed
        JPOS    DecreaseGlobal          ;

        JUMP    Global_Loop             ; Jump back to start if no condition was satisfied


; ██ ███    ██  ██████ ██████  ███████  █████  ███████ ███████      ██████  ██       ██████  ██████   █████  ██      
; ██ ████   ██ ██      ██   ██ ██      ██   ██ ██      ██          ██       ██      ██    ██ ██   ██ ██   ██ ██      
; ██ ██ ██  ██ ██      ██████  █████   ███████ ███████ █████       ██   ███ ██      ██    ██ ██████  ███████ ██      
; ██ ██  ██ ██ ██      ██   ██ ██      ██   ██      ██ ██          ██    ██ ██      ██    ██ ██   ██ ██   ██ ██      
; ██ ██   ████  ██████ ██   ██ ███████ ██   ██ ███████ ███████      ██████  ███████  ██████  ██████  ██   ██ ███████
IncreaseGlobal:
        LOAD NewBright                  ; load brightness
        ADD     PositiveDelta           ; increase brightness by 32
        STORE   NewBright               ; store new brightness

        OUT     LEDGlobal               ; send new brightness to all LEDs
        CALL checkbuttonzero            ; wait for key to be released
        JUMP    Global_Loop             ; return to main loop




; ██████  ███████  ██████ ██████  ███████  █████  ███████ ███████      ██████  ██       ██████  ██████   █████  ██      
; ██   ██ ██      ██      ██   ██ ██      ██   ██ ██      ██          ██       ██      ██    ██ ██   ██ ██   ██ ██      
; ██   ██ █████   ██      ██████  █████   ███████ ███████ █████       ██   ███ ██      ██    ██ ██████  ███████ ██      
; ██   ██ ██      ██      ██   ██ ██      ██   ██      ██ ██          ██    ██ ██      ██    ██ ██   ██ ██   ██ ██      
; ██████  ███████  ██████ ██   ██ ███████ ██   ██ ███████ ███████      ██████  ███████  ██████  ██████  ██   ██ ███████
DecreaseGlobal:
        LOAD NewBright                  ; load brightness
        ADD     NegativeDelta           ; decrease brightness by 32
        STORE   NewBright               ; store new brightness

        OUT     LEDGlobal               ; send new brightness to all LEDs
        CALL checkbuttonzero            ; wait for key to be released
        JUMP    Global_Loop             ; return to main loop






checkbuttonzero:                        ; subroutine to loop until keys are released
        IN KeyIO
        JPOS checkbuttonzero
        RETURN





; ██    ██  █████  ██████  ██  █████  ██████  ██      ███████ ███████ 
; ██    ██ ██   ██ ██   ██ ██ ██   ██ ██   ██ ██      ██      ██      
; ██    ██ ███████ ██████  ██ ███████ ██████  ██      █████   ███████ 
;  ██  ██  ██   ██ ██   ██ ██ ██   ██ ██   ██ ██      ██           ██ 
;   ████   ██   ██ ██   ██ ██ ██   ██ ██████  ███████ ███████ ███████

Input:          DW 0
CurLEDADDR:     DW 0
NewBright:      DW 127
KeyInput:       DW 0

B0:             DW 1
B1:             DW 2
B2:             DW 4

PositiveDelta:  DW 32
NegativeDelta:  DW -32

AdderSum:       DW 0
AdderInput:     DW 0

10bits:         DW 1023






; ██  ██████       █████  ██████  ██████  ██████  ███████ ███████ ███████ ███████ ███████ 
; ██ ██    ██     ██   ██ ██   ██ ██   ██ ██   ██ ██      ██      ██      ██      ██      
; ██ ██    ██     ███████ ██   ██ ██   ██ ██████  █████   ███████ ███████ █████   ███████ 
; ██ ██    ██     ██   ██ ██   ██ ██   ██ ██   ██ ██           ██      ██ ██           ██ 
; ██  ██████      ██   ██ ██████  ██████  ██   ██ ███████ ███████ ███████ ███████ ███████

Switches:       EQU 000
KeyIO:          EQU &H02D
LEDToggle:      EQU &H020
LEDGlobal:      EQU &H021

LEDBaseADDR:    EQU &H022

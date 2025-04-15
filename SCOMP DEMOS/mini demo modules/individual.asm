LOADI &H3FF			;
OUT LEDToggle		; toggle all LEDs on to ensure brighness changes will be visible
Global_Loop:
        IN      KeyIO		; get current user input from Key peripheral
        STORE   KeyInput

        JZERO   Global_Loop		; if no key has been pressed, continue looping
Global_Release:
        IN      KeyIO				;
        JPOS    Global_Release		; loop until keys are no longer being pressed

        LOAD    KeyInput			; 
        AND     B0					; If key1 has been pressed, jump to increase
        JPOS    IncreaseIndividual	;

        LOAD    KeyInput			;
        AND     B1					; If key2 has been pressed, jump to decrease
        JPOS    DecreaseIndividual	; 

        JUMP    Global_Loop			; If no condition has been met, restart

IncreaseIndividual:
        IN switches					; get current switch state as LED selection
        STORE Input
cb0:								; if corresponding bit has been selected, increase brightness
		LOAD Input					; load input from switches
        AND bit0					; check if corresponding bit was selected
        JZERO cb1					; if not, skip
        CALL il0					; if yes, call increase subroutine

cb1:								; if corresponding bit has been selected, increase brightness
		LOAD Input
        AND bit1
        JZERO cb2
        CALL il1
cb2:								; if corresponding bit has been selected, increase brightness
		LOAD Input
        AND bit2
        JZERO cb3
        CALL il2
cb3:								; if corresponding bit has been selected, increase brightness
		LOAD Input
        AND bit3
        JZERO cb4
        CALL il3
cb4:								; if corresponding bit has been selected, increase brightness
		LOAD Input
        AND bit4
        JZERO cb5
        CALL il4
cb5:								; if corresponding bit has been selected, increase brightness
		LOAD Input
        AND bit5
        JZERO cb6
        CALL il5
cb6:								; if corresponding bit has been selected, increase brightness
		LOAD Input
        AND bit6
        JZERO cb7
        CALL il6
cb7:								; if corresponding bit has been selected, increase brightness
		LOAD Input
        AND bit7
        JZERO cb8
        CALL il7
cb8:								; if corresponding bit has been selected, increase brightness
		LOAD Input
        AND bit8
        JZERO cb9
        CALL il8
cb9:								; if corresponding bit has been selected, increase brightness
		LOAD Input
        AND bit9
        JZERO done
        CALL il9
done:
        
        CALL checkbuttonzero		; wait for keys to be released before returning to a menu
        JUMP    Global_Loop



DecreaseIndividual:
        IN switches					; get current switch state as LED selection
        STORE Input
dcb0:								; if corresponding bit has been selected, decrease brightness
		LOAD Input					; load input from switches
        AND bit0					; check if corresponding bit was selected
        JZERO dcb1					; if not, skip
        CALL dl0					; if yes, call decrease subroutine
		
dcb1:								; if corresponding bit has been selected, decrease brightness
		LOAD Input
        AND bit1
        JZERO dcb2
        CALL dl1
dcb2:								; if corresponding bit has been selected, decrease brightness
		LOAD Input
        AND bit2
        JZERO dcb3
        CALL dl2
dcb3:								; if corresponding bit has been selected, decrease brightness
		LOAD Input
        AND bit3
        JZERO dcb4
        CALL dl3
dcb4:								; if corresponding bit has been selected, decrease brightness
		LOAD Input
        AND bit4
        JZERO dcb5
        CALL dl4
dcb5:								; if corresponding bit has been selected, decrease brightness
		LOAD Input
        AND bit5
        JZERO dcb6
        CALL dl5
dcb6:								; if corresponding bit has been selected, decrease brightness
		LOAD Input
        AND bit6
        JZERO dcb7
        CALL dl6
dcb7:								; if corresponding bit has been selected, decrease brightness
		LOAD Input
        AND bit7
        JZERO dcb8
        CALL dl7
dcb8:								; if corresponding bit has been selected, decrease brightness
		LOAD Input
        AND bit8
        JZERO dcb9
        CALL dl8
dcb9:								; if corresponding bit has been selected, decrease brightness
		LOAD Input
        AND bit9
        JZERO ddone
        CALL dl9
ddone:
        
        CALL checkbuttonzero		; make sure key has been released before returning to a menu
        JUMP    Global_Loop








checkbuttonzero:
        IN KeyIO
        JPOS checkbuttonzero
        RETURN

il0:								; update brightness value stored in memory
	LOAD L0							; load current brightness
	ADD PositiveDelta				; increase by constant amount
	STORE L0						; store new brightness
	OUT &H022						; send brightness to LED peripheral
	RETURN
dl0:								; update brightness value stored in memory
	LOAD L0							; load current brightness
	ADD NegativeDelta				; decrease by constant amount
	STORE L0						; store new brightness
	OUT &H022						; send brightness to LED peripheral
	RETURN
il1:								; update brightness value stored in memory
	LOAD L1
	ADD PositiveDelta
	STORE L1
	OUT &H023
	RETURN
dl1:								; update brightness value stored in memory
	LOAD L1
	ADD NegativeDelta
	STORE L1
	OUT &H023
	RETURN
il2:								; update brightness value stored in memory
	LOAD L2
	ADD PositiveDelta
	STORE L2
	OUT &H024
	RETURN
dl2:								; update brightness value stored in memory
	LOAD L2
	ADD NegativeDelta
	STORE L2
	OUT &H024
	RETURN
il3:								; update brightness value stored in memory
	LOAD L3
	ADD PositiveDelta
	STORE L3
	OUT &H025
	RETURN
dl3:								; update brightness value stored in memory
	LOAD L3
	ADD NegativeDelta
	STORE L3
	OUT &H025
	RETURN
il4:								; update brightness value stored in memory
	LOAD L4
	ADD PositiveDelta
	STORE L4
	OUT &H026
	RETURN
dl4:								; update brightness value stored in memory
	LOAD L4
	ADD NegativeDelta
	STORE L4
	OUT &H026
	RETURN
il5:								; update brightness value stored in memory
	LOAD L5
	ADD PositiveDelta
	STORE L5
	OUT &H027
	RETURN
dl5:								; update brightness value stored in memory
	LOAD L5
	ADD NegativeDelta
	STORE L5
	OUT &H027
	RETURN
il6:								; update brightness value stored in memory
	LOAD L6
	ADD PositiveDelta
	STORE L6
	OUT &H028
	RETURN
dl6:								; update brightness value stored in memory
	LOAD L6
	ADD NegativeDelta
	STORE L6
	OUT &H028
	RETURN
il7:								; update brightness value stored in memory
	LOAD L7
	ADD PositiveDelta
	STORE L7
	OUT &H029
	RETURN
dl7:								; update brightness value stored in memory
	LOAD L7
	ADD NegativeDelta
	STORE L7
	OUT &H029
	RETURN
il8:								; update brightness value stored in memory
	LOAD L8
	ADD PositiveDelta
	STORE L8
	OUT &H02A
	RETURN
dl8:								; update brightness value stored in memory
	LOAD L8
	ADD NegativeDelta
	STORE L8
	OUT &H02A
	RETURN
il9:								; update brightness value stored in memory
	LOAD L9
	ADD PositiveDelta
	STORE L9
	OUT &H02B
	RETURN
dl9:								; update brightness value stored in memory
	LOAD L9
	ADD NegativeDelta
	STORE L9
	OUT &H02B
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

bit0: DW 1
bit1: DW 2
bit2: DW 4
bit3: DW 8
bit4: DW 16
bit5: DW 32
bit6: DW 64
bit7: DW 128
bit8: DW 256
bit9: DW 512


PositiveDelta:  DW 16
NegativeDelta:  DW -16

AdderSum:       DW 0
AdderInput:     DW 0

10bits:         DW 1023

L0: DW 100
L1: DW 100
L2: DW 100
L3: DW 100
L4: DW 100
L5: DW 100
L6: DW 100
L7: DW 100
L8: DW 100
L9: DW 100




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

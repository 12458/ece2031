                         ; ██ ███ ██ ██ ████████ ██ █████ ██ ██ ███████ █████ ████████ ██ ██████ ███ ██ 
                         ; ██ ████ ██ ██ ██ ██ ██ ██ ██ ██ ███ ██ ██ ██ ██ ██ ██ ████ ██ 
                         ; ██ ██ ██ ██ ██ ██ ██ ███████ ██ ██ ███ ███████ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ███ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ ████ ██ ██ ██ ██ ██ ███████ ██ ███████ ██ ██ ██ ██ ██████ ██ ████
Initialization: 
                         IN KeyIO
                         STORE KeyInput
                         
                         JZERO Initialization
                         
                         AND B0
                         JPOS Demo1_Loop
                         LOAD KeyInput
                         AND B1
                         JPOS Demo2
                         
                         JUMP Initialization
                         
                         
                         
                         ; ██████ ███████ ███ ███ ██████ ██ ██ ██████ ██████ ██████ 
                         ; ██ ██ ██ ████ ████ ██ ██ ███ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ █████ ██ ████ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██████ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██████ ███████ ██ ██ ██████ ██ ███████ ██████ ██████ ██ 
Demo1_Loop: 
						 LOADI 0
                         OUT LEDToggle ; Turn off all LEDs
                         LOADI 255
                         OUT LEDGlobal
AdderLoop_pre: 
                         IN KeyIO
						 JPOS AdderLoop_pre		 
                         
AdderLoop: ; Wait for KEY1 to be pressed
                         IN KeyIO
                         STORE KeyInput
                         
                         JZERO AdderLoop
                         
                         AND B2
                         JPOS Initialization
                         
                         LOAD KeyInput
                         AND B0
                         JZERO AdderLoop ; Only continue if KEY1 is pressed
                         
                         IN Switches ; Grab input value from Switches
                         ADD AdderSum ; Load current running sum (does nothing on first loop)
                         AND 10bits ; Mask relevant bits 
                         STORE AdderSum
                         OUT LEDToggle ; Display new sum on LEDs
                         JUMP AdderLoop_pre ; Jump to InputLoop to wait for next value
                         
                         
                         ; ██████ ███████ ███ ███ ██████ ██████ ██ ██████ ██████ ██████ 
                         ; ██ ██ ██ ████ ████ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ █████ ██ ████ ██ ██ ██ █████ ██ ██ ██ ██ ██ ██████ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██████ ███████ ██ ██ ██████ ███████ ███████ ██████ ██████ ██ 
Demo2: 
                         LOADI 1023
                         OUT LEDToggle
                         LOADI 255
                         OUT LEDGlobal
                         
Demo2_Loop: ; Wait for a key to be pressed
                         IN KeyIO
                         STORE KeyInput
                         
                         JZERO Demo2_Loop ; Only continue if a key is pressed
                         
                         LOAD KeyInput
                         AND B2
                         JPOS Initialization
                         
                         LOAD KeyInput
                         AND B0
                         JPOS Individual_Loop
                         
                         LOAD KeyInput
                         AND B1 
                         JPOS Global_Loop
                         
                         JUMP Demo2_Loop
                         
                         
                         
                         ; ██████ ██ ██████ ██████ █████ ██ ██ ██████ ██████ ██████ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ███ ██ ██ ██ ██████ ███████ ██ ██ ██ ██ ██ ██ ██████ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██████ ███████ ██████ ██████ ██ ██ ███████ ███████ ██████ ██████ ██
Global_Loop: 
                         IN KeyIO
                         STORE KeyInput
                         
                         JZERO Global_Loop
                         
                         LOAD KeyInput
                         AND B2
                         JPOS Demo2_Loop
                         
                         LOAD KeyInput
                         AND B0
                         JPOS IncreaseGlobal
                         
                         LOAD KeyInput
                         AND B1
                         JPOS DecreaseGlobal
                         
                         JUMP Global_Loop
                         
                         
                         ; ██ ███ ██ ██████ ██████ ███████ █████ ███████ ███████ ██████ ██ ██████ ██████ █████ ██ 
                         ; ██ ████ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ ██ ██ ██ ██████ █████ ███████ ███████ █████ ██ ███ ██ ██ ██ ██████ ███████ ██ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ ████ ██████ ██ ██ ███████ ██ ██ ███████ ███████ ██████ ███████ ██████ ██████ ██ ██ ███████
IncreaseGlobal: 
                         IN LEDGlobal
                         ADD PositiveDelta
                         STORE NewBright
                         
                         SUB 255
                         JPOS Assign255 ; Check for overflow
                         
                         LOAD NewBright
                         OUT LEDGlobal
                         JUMP Global_Loop
                         
                         
                         
                         
                         ; ██████ ███████ ██████ ██████ ███████ █████ ███████ ███████ ██████ ██ ██████ ██████ █████ ██ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ █████ ██ ██████ █████ ███████ ███████ █████ ██ ███ ██ ██ ██ ██████ ███████ ██ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██████ ███████ ██████ ██ ██ ███████ ██ ██ ███████ ███████ ██████ ███████ ██████ ██████ ██ ██ ███████
DecreaseGlobal: 
                         IN LEDGlobal
                         ADD NegativeDelta
                         STORE NewBright
                         
                         JNEG AssignZero ; Check for underflow
                         
                         LOAD NewBright
                         OUT LEDGlobal
                         JUMP Global_Loop
                         
                         
                         
                         ; ██ ███ ██ ██████ ██ ██ ██ ██ ██████ ██ ██ █████ ██ ██ ██████ ██████ ██████ 
                         ; ██ ████ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ███████ ██ ██ ██ ██ ██ ██ ██████ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ ████ ██████ ██ ████ ██ ██████ ██████ ██ ██ ███████ ███████ ██████ ██████ ██ 
Individual_Loop: 
                         IN KeyIO
                         STORE KeyInput
                         
                         JZERO Individual_Loop
                         
                         LOAD KeyInput
                         AND B2
                         JPOS Demo2_Loop
                         
                         LOAD KeyInput
                         AND B0
                         JPOS IncreaseIndividual
                         LOAD KeyInput
                         
                         AND B1
                         JPOS DecreaseIndividual
                         
                         JUMP Individual_Loop
                         
                         
                         
                         
                         ; ██ ███ ██ ██████ ██████ ███████ █████ ███████ ███████ ██ ███ ██ ██████ ██ ██ ██ ██ ██████ ██ ██ █████ ██ 
                         ; ██ ████ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ████ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ ██ ██ ██ ██████ █████ ███████ ███████ █████ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ███████ ██ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ ████ ██████ ██ ██ ███████ ██ ██ ███████ ███████ ██ ██ ████ ██████ ██ ████ ██ ██████ ██████ ██ ██ ███████ 
IncreaseIndividual: 
                         IN Switches
                         STORE Input
                         LOAD LEDBaseADDR
                         STORE CurLEDADDR
                         
IncreaseIndividual_Loop: 
                         LOAD Input
                         AND B0
                         JPOS BrightnessUp ; if LSB is 1, edit LED
                         
                         LOAD Input
                         SHIFT -1 ; Shift switch input to operate on next LED bit
                         STORE Input
                         
                         LOAD CurLEDADDR
                         ADDI 1 ; Iterate LED
                         STORE CurLEDADDR
                         LOAD
                         
                         ADDI -44 ; Check condition 0x2C
                         JPOS IncreaseIndividual_Loop
                         JUMP Individual_Loop
                         
BrightnessUp: 
                         LOAD CurLEDADDR
                         IN CurLEDADDR ; Read current brightness of this LED
                         
                         ADD PositiveDelta
                         STORE NewBright ; Increase brightness
                         
                         SUB 255
                         JPOS Assign255 ; reassign overflows
                         
                         LOAD NewBright
                         OUT CurLEDADDR ; Write new brightness to the LED
                         RETURN
                         
Assign255: 
                         LOADI 255
                         STORE NewBright
                         RETURN
                         
                         
                         
                         
                         
                         
                         
                         ; ██████ ███████ ██████ ██████ ███████ █████ ███████ ███████ ██ ███ ██ ██████ ██ ██ ██ ██ ██████ ██ ██ █████ ██ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ████ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ █████ ██ ██████ █████ ███████ ███████ █████ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ███████ ██ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██████ ███████ ██████ ██ ██ ███████ ██ ██ ███████ ███████ ██ ██ ████ ██████ ██ ████ ██ ██████ ██████ ██ ██ ███████ 
DecreaseIndividual: 
                         IN Switches
                         STORE Input ; get current switch state
                         
                         LOAD LEDBaseADDR
                         STORE CurLEDADDR ; reset current led address to base
                         
DecreaseIndividual_Loop: 
                         LOAD Input
                         AND B0
                         JPOS BrightnessDown ; if LSB is 1, edit LED
                         
                         LOAD Input
                         SHIFT -1 ; Shift switch input to operate on next LED bit
                         STORE Input
                         
                         LOAD CurLEDADDR
                         ADDI 1 ; Iterate LED
                         STORE CurLEDADDR
                         LOAD
                         
                         ADDI -44 ; Check if last LED has been operated on
                         JPOS DecreaseIndividual_Loop
                         RETURN
                         
BrightnessDown: 
                         LOAD CurLEDADDR
                         IN CurLEDADDR ; Read current brightness of this LED
                         
                         ADD NegativeDelta
                         STORE NewBright ; Increase brightness
                         
                         JNEG AssignZero ; reassign overflows
                         
                         LOAD NewBright
                         OUT CurLEDADDR ; Write new brightness to the LED
                         RETURN
                         
AssignZero: 
                         LOADI 0
                         STORE NewBright
                         RETURN
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         ; ██ ██ █████ ██████ ██ █████ ██████ ██ ███████ ███████ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ ███████ ██████ ██ ███████ ██████ ██ █████ ███████ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ████ ██ ██ ██ ██ ██ ██ ██ ██████ ███████ ███████ ███████
                         
Input: DW 0
CurLEDADDR: DW 0
NewBright: DW 0
KeyInput: DW 0
                         
B0: DW 1
B1: DW 2
B2: DW 4
                         
PositiveDelta: DW 32
NegativeDelta: DW -32
                         
AdderSum: DW 0
AdderInput: DW 0
                         
10bits: DW 1023
                         
                         
                         
                         
                         
                         ; ██ ██████ █████ ██████ ██████ ██████ ███████ ███████ ███████ ███████ ███████ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ ██ ███████ ██ ██ ██ ██ ██████ █████ ███████ ███████ █████ ███████ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██████ ██ ██ ██████ ██████ ██ ██ ███████ ███████ ███████ ███████ ███████
                         
Switches: EQU 000
KeyIO: EQU &H02D
LEDToggle: EQU &H020
LEDGlobal: EQU &H021
                         
LEDBaseADDR: EQU &H022
                         
                         

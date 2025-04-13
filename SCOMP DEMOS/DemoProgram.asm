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
Demo1_Release: 
                         IN KeyIO
                         JPOS Demo1_Release ; Loop until KeyIO is 0
                         
                         LOADI 0
                         OUT LEDToggle ; Turn off all LEDs
                         LOADI 255
                         OUT LEDGlobal
                         
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
                         JUMP AdderLoop ; Jump to InputLoop to wait for next value
                         
                         
                         ; ██████ ███████ ███ ███ ██████ ██████ ██ ██████ ██████ ██████ 
                         ; ██ ██ ██ ████ ████ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ █████ ██ ████ ██ ██ ██ █████ ██ ██ ██ ██ ██ ██████ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██████ ███████ ██ ██ ██████ ███████ ███████ ██████ ██████ ██ 
Demo2: 
Demo2_Release: 
                         IN KeyIO
                         JPOS Demo2_Release ; Loop until KeyIO is 0
                         
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
Global_Release: 
                         IN KeyIO
                         JPOS Global_Release ; Loop until KeyIO is 0
                         
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
                         
                         SUB 256
                         JNEG SkipOverFlow_Global ; Check for overflow
                         
                         LOADI 255
                         STORE NewBright
                         
SkipOverFlow_Global: 
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
                         
                         ADD 1
                         JPOS SkipUnderFlow_Global ; Check for underflow
                         
                         LOADI 0
                         STORE NewBright
                         
SkipUnderFlow_Global: 
                         LOAD NewBright
                         OUT LEDGlobal
                         JUMP Global_Loop
                         
                         
                         
                         ; ██ ███ ██ ██████ ██ ██ ██ ██ ██████ ██ ██ █████ ██ ██ ██████ ██████ ██████ 
                         ; ██ ████ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ███████ ██ ██ ██ ██ ██ ██ ██████ 
                         ; ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ 
                         ; ██ ██ ████ ██████ ██ ████ ██ ██████ ██████ ██ ██ ███████ ███████ ██████ ██████ ██ 
Individual_Loop: 
Individual_Release: 
                         IN KeyIO
                         JPOS Individual_Release ; Loop until KeyIO is 0
                         
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
                         AND 1
                         JZERO SkipIncrease ; Do not edit unselected LEDs
                         
BrightnessUp: 
                         LOAD CurLEDADDR
                         IN CurLEDADDR ; Read current brightness of this LED
                         
                         ADD PositiveDelta
                         STORE NewBright ; Increase brightness
                         
                         SUB 256
                         JNEG SkipOverflowAssignment ; reassign overflows
                         
                         LOADI 255
                         STORE NewBright
                         
SkipOverflowAssignment: 
                         LOAD NewBright
                         OUT CurLEDADDR ; Write new brightness to the LED
                         
                         
SkipIncrease: 
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
                         AND 1
                         JZERO SkipDecrease ; if LSB is 1, edit LED
                         
                         LOAD CurLEDADDR
                         IN CurLEDADDR ; Read current brightness of this LED
                         
                         ADD NegativeDelta
                         STORE NewBright ; Increase brightness
                         
                         ADD 1
                         JPOS SkipUnderflowAssignment ; reassign overflows
                         
                         LOADI 0
                         STORE NewBright
                         
SkipUnderflowAssignment: 
                         LOAD NewBright
                         OUT CurLEDADDR ; Write new brightness to the LED
                         
SkipDecrease: 
                         LOAD Input
                         SHIFT -1 ; Shift switch input to operate on next LED bit
                         STORE Input
                         
                         LOAD CurLEDADDR
                         ADDI 1 ; Iterate LED
                         STORE CurLEDADDR
                         LOAD
                         
                         ADDI -44 ; Check if last LED has been operated on
                         JPOS DecreaseIndividual_Loop
                         JUMP Individual_Loop
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
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
                         
                         
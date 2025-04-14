; LED Control Program
; KEY0 - Decrease brightness
; KEY1 - Increase brightness 
; Switches - Toggle LEDs

; Constants for hardware addresses
Switches:    EQU &H000   ; Address for switches
LEDToggle:   EQU &H020   ; Address to toggle LEDs
LEDGlobal:   EQU &H021   ; Address for global LED brightness
LEDBaseAddr: EQU &H022   ; Base address for individual LEDs
KeyIO:       EQU &H02D   ; Address for key input

; Constants for bit masks
B0:          DW 1        ; Bit 0 mask (KEY0)
B1:          DW 2        ; Bit 1 mask (KEY1)

; Constants for brightness control
BrightDelta: DW 32       ; Brightness increment/decrement value
MaxBright:   DW 255      ; Maximum brightness value

; Variables
PrevSwitches: DW 0       ; Previous state of switches
CurrSwitches: DW 0       ; Current state of switches
CurBright:    DW 128     ; Current brightness (start at mid-level)
KeyInput:     DW 0       ; Current key input state
LEDAddr:      DW 0       ; Current LED address

; Program start
Initialization:
    LOADI 128            ; Set initial brightness to middle value
    STORE CurBright
    OUT LEDGlobal        ; Apply to global brightness
    
    LOADI 0              ; Clear LEDs initially
    OUT LEDToggle
    
    IN Switches          ; Get initial switch state
    STORE PrevSwitches

MainLoop:
    ; Check for key presses
    IN KeyIO
    STORE KeyInput
    
    ; Process KEY0 (decrease brightness)
    LOAD KeyInput
    AND B0               ; Isolate KEY0 bit
    JZERO CheckKey1      ; If KEY0 not pressed, check KEY1
    
    ; Decrease brightness
    LOAD CurBright
    ADDI -32             ; Subtract brightness delta
    JNEG SetZeroBright   ; If result negative, set to zero
    STORE CurBright      ; Store new brightness
    OUT LEDGlobal        ; Update global brightness
    CALL WaitForKeyRelease
    JUMP CheckSwitches   ; Skip other key checks
    
SetZeroBright:
    LOADI 0              ; Set minimum brightness
    STORE CurBright
    OUT LEDGlobal
    CALL WaitForKeyRelease
    JUMP CheckSwitches

CheckKey1:
    ; Process KEY1 (increase brightness)
    LOAD KeyInput
    AND B1               ; Isolate KEY1 bit
    JZERO CheckSwitches  ; If KEY1 not pressed, check switches
    
    ; Increase brightness
    LOAD CurBright
    ADDI 32              ; Add brightness delta
    SUB MaxBright        ; Check if greater than maximum
    JPOS SetMaxBright    ; If result positive, set to maximum
    
    LOAD CurBright       ; Reload current brightness
    ADDI 32              ; Add brightness delta
    STORE CurBright      ; Store new brightness
    OUT LEDGlobal        ; Update global brightness
    CALL WaitForKeyRelease
    JUMP CheckSwitches
    
SetMaxBright:
    LOADI 255            ; Set maximum brightness
    STORE CurBright
    OUT LEDGlobal
    CALL WaitForKeyRelease

CheckSwitches:
    ; Check for switch changes to toggle LEDs
    IN Switches
    STORE CurrSwitches
    
    ; XOR with previous state to find changes
    LOAD CurrSwitches
    XOR PrevSwitches
    JZERO MainLoop       ; If no changes, go back to main loop
    
    ; Toggle LEDs based on changed switches
    LOAD CurrSwitches
    XOR PrevSwitches     ; Get changed bits
    OUT LEDToggle        ; Toggle those LEDs
    
    ; Update previous switch state
    LOAD CurrSwitches
    STORE PrevSwitches
    
    JUMP MainLoop        ; Return to main loop

; Subroutine to wait for key release
WaitForKeyRelease:
    IN KeyIO
    JPOS WaitForKeyRelease  ; If any key pressed, keep waiting
    RETURN                  ; Return when all keys released
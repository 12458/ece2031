ORG 0

  LOADI 0
  OUT   LEDToggle       ; Turn off all LEDs

InputLoop:              ; Wait for KEY1 to be pressed
  IN    KEYs
  ANDI  B0
  JZERO InputLoop:      ; Only continue if KEY1 is pressed

  IN    Switches        ; Grab input value from Switches
  STORE Input           ; Store User input
  LOAD  Sum             ; Load current running sum (does nothing on first loop)
  ADD   Input           ; Add input value to running Sum
  STORE Sum
  OUT   LEDToggle       ; Display new sum on LEDs
  JUMP InputLoop        ; Jump to InputLoop to wait for next value



; MEMORY
; constants
B0    : DW 1
B1    : DW 2

; variables
Sum   : DW 0
Input : DW 0



; IO ADDRESS CONSTANTS

Switches  : EQU 000
KEYs      : EQU &H02D
LEDToggle : EQU &H020


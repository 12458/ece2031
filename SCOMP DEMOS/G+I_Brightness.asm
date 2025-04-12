        ; === RESET START ===
        IN      Switches            ; Read switch state
        STORE   SWITCH_STATE
        JZERO   GLOBAL_MODE     ; If all switches down, enter global mode

        ; === INDIVIDUAL MODE ===
        IN      KeyIO            ; Read KEYs
        STORE   KEYS
        LOADI   1
        AND     KEYS
        JZERO   CHECK_KEY1_INDIV

        ; KEY0 pressed → subtract
        CALL    MODIFY_LED_BRIGHTNESS_SUB
        JUMP    END

CHECK_KEY1_INDIV:
        LOADI   2
        AND     KEYS
        JZERO   END             ; Neither key → do nothing
        CALL    MODIFY_LED_BRIGHTNESS_ADD
        JUMP    END

; === GLOBAL MODE ===
GLOBAL_MODE:
        IN      KeyIO
        STORE   KEYS
        LOADI   1
        AND     KEYS
        JZERO   CHECK_KEY1_GLOBAL

        ; KEY0 pressed → subtract
        CALL    DECREASE_GLOBAL_BRIGHTNESS
        JUMP    END

CHECK_KEY1_GLOBAL:
        LOADI   2
        AND     KEYS
        JZERO   END             ; Neither key → do nothing
        CALL    INCREASE_GLOBAL_BRIGHTNESS
        JUMP    END

; === GLOBAL BRIGHTNESS MODIFIERS ===
INCREASE_GLOBAL_BRIGHTNESS:
        IN      
        ADDI    25
        OUT     LEDGlobal
        RETURN

DECREASE_GLOBAL_BRIGHTNESS:
        IN      LEDGlobal
        ADDI    -25
        OUT     LEDGlobal
        RETURN

; === INDIVIDUAL BRIGHTNESS: ADD ===
MODIFY_LED_BRIGHTNESS_ADD:
        LOADI   &H22
        STORE   LED_PTR

LOOP_ADD:
        LOAD    SWITCH_STATE
        LOADI   1
        AND     SWITCH_STATE
        JZERO   SKIP_ADD

        IN      LED_PTR         ; Read brightness
        ADDI    25
        OUT     LED_PTR         ; Write new brightness

SKIP_ADD:
        LOAD    SWITCH_STATE
        SHIFT   -1
        STORE   SWITCH_STATE

        LOAD    LED_PTR
        ADDI    1
        STORE   LED_PTR
        LOADI   &H2C
        SUB     LED_PTR
        JPOS    LOOP_ADD
        RETURN

; === INDIVIDUAL BRIGHTNESS: SUB ===
MODIFY_LED_BRIGHTNESS_SUB:
        LOADI   &H22
        STORE   LED_PTR

LOOP_SUB:
        LOAD    SWITCH_STATE
        LOADI   1
        AND     SWITCH_STATE
        JZERO   SKIP_SUB

        IN      LED_PTR         ; Read brightness
        ADDI    -25
        OUT     LED_PTR         ; Write new brightness

SKIP_SUB:
        LOAD    SWITCH_STATE
        SHIFT   -1
        STORE   SWITCH_STATE

        LOAD    LED_PTR
        ADDI    1
        STORE   LED_PTR
        LOADI   &H2C
        SUB     LED_PTR
        JPOS    LOOP_SUB
        RETURN

; === DATA SECTION ===
SWITCH_STATE:   DW   0
KEYS:           EQU  XXX
LED_PTR:        DW   0

END:
NOP



; IO ADDRESS CONSTANTS

Switches  : EQU 000
KeyIO     : EQU &H02D
LEDToggle : EQU &H020
LEDGlobal : EQU &H021
LED0            : EQU &H022
LED1            : EQU &H023
LED2            : EQU &H024
LED3            : EQU &H025
LED4            : EQU &H026
LED5            : EQU &H027
LED6            : EQU &H028
LED7            : EQU &H029
LED8            : EQU &H02A
LED9            : EQU &H02B


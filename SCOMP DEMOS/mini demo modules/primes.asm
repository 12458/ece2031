             ORG 0
             LOADI &H3FF
             OUT LEDSelect ; enable all LEDs so brightness changes are visible
             
firstloop: ; loop until switch nine is enabled
             IN Switches
             OUT LEDGlobal ; before exiting loop, user can use lower 8 switches to send brightness value to all LEDs
             IN Switches
             AND bit9
             JZERO firstloop
             
secondloop: ; activate switches at prime locations (switches 2, 3, 5, 7)
             LOAD primes
             OUT LEDSelect
             IN Switches
             OUT LEDGlobal
             IN Switches
             AND bit9
             JPOS secondloop ; continue to next loop if SW9 is still up
             
thirdloop: ; load predefined descending brightness values onto prime switches
             LOADI 255
             OUT &H29
             LOADI 191
             OUT &H27
             LOADI 127
             OUT &H25
             LOADI 63
             OUT &H24
             IN Switches
             AND bit9
             JZERO thirdloop ; continue to next loop if SW9 is still up
             
fourthloop: 
             JUMP fourthloop ; hold behavior
             
             
             
bit9: DW &H200
primes: DW &HAC
Switches: EQU 000
             
LEDSelect: EQU &H020
LEDGlobal: EQU &H021
             k 
LEDBaseADDR: EQU &H022
             
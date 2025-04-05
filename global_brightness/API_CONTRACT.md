# LED Peripheral API Contract

## Overview

This document defines the API contract for the SCOMP LED Peripheral, which provides enhanced control of the LEDs on the DE10 board. The peripheral occupies I/O addresses 0x20-0x2C and implements brightness control with gamma correction, RAM-based pattern playback, and special effects.

## Address Map

| Address | Name | Description |
|---------|------|-------------|
| 0x20 | LED_CONTROL | Direct control of LED states |
| 0x21 | GLOBAL_BRIGHTNESS | Global brightness with gamma correction |
| 0x22-0x2B | INDIVDUAL_BRIGHTNESS | Individual brightness with gamma correction |
| 0x2C | SPECIAL_EFFECTS | Pre-defined LED effects |

## Register Definitions

### 0x20: LED_CONTROL
Direct control of the LED states. This takes higher priority over 0x21.

**Write Operation:**
- Bits 0-9: LED states (1 = on, 0 = off), mapping directly to LEDs 0-9
- Bits 10-15: Reserved, should be set to 0

**Read Operation:**
- Returns the current state of LEDs 0-9 in bits 0-9
- Bits 10-15: Reserved, will read as 0

### 0x21: GLOBAL BRIGHTNESS
Controls the global brightness of all LEDs. Overrides all settings as configured in 0x22 - 0x2B.
- Bits 0-7 (0 = off, 255 = maximum brightness)
- Bits 8-15: Reserved, should be set to 0

### 0x22 - 0x2B: INDIVIDUAL BRIGHTNESS
Controls the individual brightness level with gamma correction for LEDs 1-10.

**Write Operation:**
- Bits 0-7: Brightness level (0 = off, 255 = maximum brightness)
- Bits 8-15: Reserved, should be set to 0

**Read Operation:**
- Bits 0-7: Current brightness level
- Bits 8-15: Reserved, will read as 0

**Note:** Gamma correction is automatically applied to make brightness increases appear linear to human perception.

### 0x2C: SPECIAL_EFFECTS
Controls pre-defined LED effects.

**Write Operation:**
- Bits 0-2: Effect type
  - 00: All LEDs on/off
  - 01: Binary counting
  - 10: Scanner effect
  - 11: Breathing effect
- Bits 3-4: RESERVED FOR FUTURE USE, should be set to 0
- Bits 4-11: Effect speed (0 = fastest, 255 = slowest)
- Bits 12-14: Reserved, should be set to 0
- Bit 15: Effect state (0 = stop, 1 = play)

**Read Operation:**
- Returns the same format as write operation with current settings

## Implementation Details

### Brightness and PWM
- PWM is used to implement variable brightness
- 8-bit resolution (0-255) for brightness values
- Gamma correction using approximate gamma = 2.2 curve

### Special Effects
- Effects override direct LED control while active
- Effects use the global brightness setting
- When an effect is stopped, the LEDs return to their previous direct control state
- Zeroing out the register disables effects
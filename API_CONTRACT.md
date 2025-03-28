# LED Peripheral API Contract

## Overview

This document defines the API contract for the SCOMP LED Peripheral, which provides enhanced control of the LEDs on the DE10 board. The peripheral occupies I/O addresses 0x20-0x25 and implements brightness control with gamma correction, RAM-based pattern playback, and special effects.

## Address Map

| Address | Name | Description |
|---------|------|-------------|
| 0x20 | LED_CONTROL | Direct control of LED states |
| 0x21-0x2B | BRIGHTNESS | Global brightness with gamma correction |
| 0x2C | PATTERN_CONTROL | Control pattern playback |
| 0x2D | PATTERN_ADDRESS | RAM address for pattern data |
| 0x2E | PATTERN_LENGTH | Length of pattern in frames |
| 0x2F | SPECIAL_EFFECTS | Pre-defined LED effects |

## Register Definitions

### 0x20: LED_CONTROL
Direct control of the LED states.

**Write Operation:**
- Bits 0-9: LED states (1 = on, 0 = off), mapping directly to LEDs 0-9
- Bits 10-15: Reserved, should be set to 0

**Read Operation:**
- Returns the current state of LEDs 0-9 in bits 0-9
- Bits 10-15: Reserved, will read as 0

### 0x21 - 0x2B: BRIGHTNESS
Controls the global brightness level with gamma correction for LEDs 1-10.

**Write Operation:**
- Bits 0-7: Brightness level (0 = off, 255 = maximum brightness)
- Bits 8-15: Reserved, should be set to 0

**Read Operation:**
- Bits 0-7: Current brightness level
- Bits 8-15: Reserved, will read as 0

**Note:** Gamma correction is automatically applied to make brightness increases appear linear to human perception.

### 0x2C: PATTERN_CONTROL
Controls the playback of LED patterns stored in RAM.

**Write Operation:**
- Bits 0-7: Loop count (0 = infinite looping)
- Bits 8-14: Speed control (0 = fastest, 127 = slowest)
- Bit 15: Pattern state (0 = stop, 1 = play)

**Read Operation:**
- Bits 0-7: Current loop count remaining
- Bits 8-14: Current speed setting
- Bit 15: Current pattern state

### 0x2D: PATTERN_ADDRESS
Specifies the starting address in RAM for pattern data.

**Write Operation:**
- Bits 0-15: Starting address in RAM

**Read Operation:**
- Bits 0-15: Current pattern address

### 0x2E: PATTERN_LENGTH
Specifies the number of frames in the pattern.

**Write Operation:**
- Bits 0-15: Number of frames to read from RAM

**Read Operation:**
- Bits 0-15: Current pattern length

### 0x2F: SPECIAL_EFFECTS
Controls pre-defined LED effects.

**Write Operation:**
- Bits 0-3: Effect type
  - 0: All LEDs on/off
  - 1: Binary counting
  - 2: Scanner effect
  - 3: Breathing effect
- Bits 4-11: Effect speed (0 = fastest, 255 = slowest)
- Bits 12-14: Reserved, should be set to 0
- Bit 15: Effect state (0 = stop, 1 = play)

**Read Operation:**
- Returns the same format as write operation with current settings

## Pattern Data Format

Pattern data is stored in RAM starting at the address specified in PATTERN_ADDRESS. Each word in RAM represents one frame of the pattern:

- Bits 0-9: LED states for the frame
- Bits 10-15: Reserved

## Implementation Details

### Brightness and PWM
- PWM is used to implement variable brightness
- 8-bit resolution (0-255) for brightness values
- Gamma correction using approximate gamma = 2.2 curve

### Pattern Playback
- Pattern playback occurs at the rate specified by the speed control
- Each frame displays for: (speed_control + 1) × base_time_unit
- When a pattern completes its specified number of loops, it automatically stops

### Special Effects
- Effects override direct LED control while active
- Effects use the global brightness setting
- When an effect is stopped, the LEDs return to their previous direct control state
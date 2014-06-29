---
title: ARTS-2
layout: base
---

## ARTS-2

### Program the ARTS-2

 1. Connect 9v power, and RS-232 serial cable
 1. Start up Data Analyzer application from Ozark Aerospace
 1. Specify com port if necessary

### Verify correct operation of ARTS-2

 1. Goto altimeter -> diagnostics
 1. Press chirp to test tone generation
 1. With pyros disconnected, click boomer/sw, both pyros should show bad. Switch 2 should show 'off', and switch 1 show 'on'
 1. Connect the resistor/led combo to each pyro channel, click boomer/sw to verify that the respective channel shows OK. Also test-fire each pyro with the respective LED to make sure it lights the LED.

### Setup profiles

 1. We will be using flight profile 1 (one). Make sure respective dip switch on (dip switch 1 should be 'On')
 1. Goto the Altimeter -> Configuration
 1. Verify Profile 1 is configured to deploy drogue at apogee, and main at 1000ft, with a 50hz sample rate. You can 'Load from Alt', and verify these numbers, and 'Save to Alt'. When saving to alt for profile 1, you'll hear 1 beep.
 1. Verify Profile 2 is configured do deploy channel 1 at apogee, channel 2 at 1000ft, and a 50 hz rate... Just to be safe, save this to the altimeter. When saving to alt for profile 2, you'll hear 2 beeps.

# Payload Checkout

## Camera Block

1. Apply 12 V to Payload
    - Red LED comes on ATV overlay board
    - ~190 mA
1. Power on GearCam
    - LEDs (top of camera block) Red, Blue slow blink
    - ~500 mA
1. Power down
1. Check files on SD cards


# Buttonup

## Payload Module

### Pre-Assembly

1. Charge
    - TeleMetrum
1. Check Battery voltages
    - ARTS

### Assembly

**Note:**

_If the erector set has to be removed, the black ABS camera block has to be removed (4 8/32 bolts 3/32 hex heads)._

1. Cabling:
    - 12 V up (red/black) from ATV power breakout
    - A/V/GND down from camera (blue connector)
    - Pyro (to recovery) must go up channels to not interfere with camera module.
    - Large camera connector should be in the camera sled (so it can be attached later)
1. Check 9 V leads are terminated into ARTS and TeleMetrum
    - ARTS
    - TeleMetrum
1. Aeroshell:
    i. Slide aeroshell down so the square hole lines up with the APS in the front of the camera sled
    i. Slide until flush with top of module
1. Camera block
    i. Double check SD card is in place and tapped in.
    i. Check USB in place
    i. Turn camera block upside-down and attach keyed connector
    i. Get cable into the grove and start to slide it in without pinching
    i. Slide camera block all the way in. There is a little spring in the last couple mm
    i. Insert 4 8/32 buttonhead screws with washers.
    i. Check HD cam is facing out the back ~ 1 mm

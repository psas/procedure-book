---
title: SSH In to Flight Computer Test
layout: base
---

# Drop Test Procedures

## Common Setup
Start with the Avionics Stack on the rocket cart and batteries charged.

 1. Plug in table
 1. Turn on LTC Power brick
 1. Switch on launch tower computer main power
    - Wait a few seconds, verify lights: four reds, blinking blue, blinking green.

## Connect to wifi

 1. Turn on ground control router.
 1. Connect to psas wifi network
    - password will be written on the AP or the table

## Verify LTC

 1. `ping ltc`

## Get flight computer going

 1. Power on Flight Computer.
    - on off switch on battery cable.
 1. `ping 10.10.10.5`
    - actually talking to the rocket.
 1. Run [commander](https://github.com/psas/commander) on your laptop.



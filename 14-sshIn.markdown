---
title: SSH In to Flight Computer Test
layout: base
---

# SSH Test Procedures

## Common Setup
Start with the Avionics Stack on the rocket cart and batteries charged.

 1. Make sure there is something attached to the wifi connector.
    - either the antenna or a load.
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
    - suggested to run this in a virtualenv

## In commander
 1. FC On
    - click only this, nothing else!

## At laptop
 1. `ssh root@10.10.10.10`

## Common Shutdown
 1. Cleanly shut down the flight computer
    - `shutdown now`
    - wait for three or four seconds for computer to shutdown.
 1. Using commander: click FC Off (Green button)
    - green light on computer will go out.
 1. click all off
 1. Power off Flight Computer.
    - on off switch on battery cable.
 1. Switch off launch tower computer main power
 1. Turn off LTC Power brick
 1. Unplug table
 1. Disconnect laptop from psas wifi network
 1. Turn off ground control router.


---
title: SSH In to Flight Computer Test
layout: base
---

# SSH Test Procedures

## Common Setup
Start with the Avionics Stack on the rocket cart and batteries charged

 1. Make sure there is something attached to the wifi radio connector (SMA at the top of the Avionics Stack)
    - Either the antenna or a load
 1. Plug in table
 1. Turn on LTC Power brick
 1. Switch on launch tower computer main power
    - Wait a few seconds, verify lights: four reds, blinking blue, blinking green

## Connect to wifi

 1. Turn on ground control router
 1. Connect to `psas` wifi network
    - Password will be written on the AP or the table

## Verify LTC

 1. `ping ltc`
    - `ltc` should be in the DNS offered via DHCP

## Get flight computer going

 1. Power on Avionics Stack
    - On off switch on battery cable
 1. `ping 10.10.10.5`
    - Actually talking to the RocketNet Hub
 1. Run [commander](https://github.com/psas/commander) on your laptop.
    - Suggested to run this in a virtualenv

## In commander
 1. FC On
    - Click only this, nothing else!
    - Wait for flight computer to boot and establish networking (about 40 seconds?)

## At laptop
 1. `ssh root@10.10.10.10`
    - Actually talking to Flight Computer
    - See note on wood base of avionics stack for password

## Common Shutdown
 1. Cleanly shut down the Flight Computer
    - `shutdown now`
    - Wait for FC to shut down (about 30 seconds?  Or 5(?) seconds after it stops responding to pings.)
 1. Using commander: click FC Off (Green button)
    - Green light on computer will go out
 1. Using commander: click All Off
 1. Switch off Avionics Stack
    - On off switch on battery cable
 1. Switch off Launch Tower Computer main power
    - Red switch on side of LTC case
 1. Turn off LTC Power brick
 1. Disconnect laptop from `psas` wifi network
 1. Turn off ground control router.
 1. Unplug table

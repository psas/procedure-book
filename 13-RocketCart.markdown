---
title: Flight Computer Stack
layout: base
---

# How to run the FC stack

## Rocket Cart startup

 1. Plug cart in to mains power.
 1. Turn on power strip.
    - wifi will come up. See note on router for password.
 1. For the boards that you intend to work on, attach JTAG dongles or usb/serial cables.
 1. Make sure the dev battery cable switch is OFF.
 1. Connect dev battery cable to RocketNet Hub battery port.
 1. Attach dev umbilical cable.
 1. Turn dev battery cable switch ON.
 1. Verify the RNH turns on by noting the blinking LED.
 1. Conduct a ping test with `ping 10.0.0.5` to verify RNH is communicating. 
 1. On your local machine start [FC test program](https://github.com/psas/fc-test).
 1. Use `localhost:5000/fc/` (second slash is necessary) to turn on or off RNH power ports.


## Bring up the Flight Computer (FC) 

 1. Turn on power to the FC using the FC Stack Control website. 
 1. Verify the green LED at the FC RNH connector turns on.
 1. Verify the LEDs on the FC itself turn on.
 1. Conduct a ping test with `ping 10.0.0.10` to verify FC is communicating.
 1. ssh as `root@10.0.0.10`. 
    - See note on wood base of avionics stack for password.
 1. Start Flight Computer Framework (FCF) code with `./startFC`.
 1. Verify the FCF started by opening the browser telemetry viewer at `localhost:8080`.
 1. Stop FCF code with `./stopFC`.

**MAKE SURE FCF IS COMPILED WITH build_for_flight.sh**



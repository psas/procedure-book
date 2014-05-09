---
title: Flight Computer Stack
layout: base
---

# How to run the FC stack

## Cart startup

 1. Plug cart in to mains power
 1. Turn on power strip
    - wifi will come up. See note on router for password
 1. Attach JTAG dongles or usb/serial cables if necessary
 1. Connect dev battery vable
 1. Turn dev battery cable switch on
 1. RNH should turn on
    - verify via LEDs and with ping test
 1. On your local machine start [FC test program](https://github.com/psas/fc-test)
 1. Use `localhost:5000/fc/` (second slash is necessary) to turn on or off RNH power ports


## FC Specific

**MAKE SURE FCF IS COMPILED WITH build_for_flight.sh**

 1. Turn on power to the FC through RNH
 1. Verify startup with ping test
 1. ssh as root. See note on FC for password
 1. Start FCF code with `startFC`
 1. Stop FCF code with `stopFC`



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
 1. Connect battery
 1. RNH should turn on
    - verify via LEDs and with ping test
 1. On your local machine start [FC test program](https://github.com/psas/fc-test)
 1. Use `localhost:5000/fc/` (second slash is necessary) to turn on or off RNH power ports


## FC Specific

**MAKE SURE FCF IS COMPILED WITH build_for_flight.sh**

 1. Turn on power through RNH
 1. Verify startup with ping test
 1. ssh as root. See note on FC for password
 1. Start FC code with `/etc/inid.d/fc start`
 1. Stop FC code with `/etc/inid.d/fc stop`



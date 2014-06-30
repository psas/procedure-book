---
title: Pre Launch
layout: base
---

# Pre Launch

## Launch Control Setup

### Radio Checks

 1. 2 meter mobile on and locked on PSAS freq (see References)
 1. Sound-off personnel with HTs
 1. PSAS Linksys router up and running
 1. Setup Telemetry server
 1. Plug in TM3K
    i. ping to verify


## Launch Tower Setup

#### Tools for On Tower Procedures

 - Small flashlight to view inside aeroshell
 - Medium flat-head screw driver, for main switches, make sure it will fit thru the aeroshell holes

### At Launch Tower  (In parallel  with At Launch Control)
 1. Verify Igniters **NOT in**
 1. Power on LTC 
 1. Call launch control for LTC update
 1. Attach umbilical cable
 1. Call launch control for FC update

#### Switches

![Payload module switch layout](diagrams/switches.png)

1. Turn on TeleMetrum (SW 4)
    i. Listen for beeps. 3 beeps good, low tone bad, 10 seconds Morse P ( .--. )
    i. Radio down to launch control to verify telemetry is streaming.
    i. Radio down to launch control to verify configuration coming from TeleMetrum is as expected.
1. Turn on ARTs (SW 3), verify good beep code (3 beeps).

### At Launch Control (In parallel with At Launch Tower)

 1. Wait for call from tower that LTC is on
 1. Verify LTC (ping)
 1. Bring up
    i. LTComm
    i. Commander
    i. Telemetry window
       - Check for connected in top right
 1. Call tower to continue and attach umbilcal
 1. Using Commander default tab, check umbilical with RNH version command
 1. Using LTComm, turn on shore power
      i. Look for shorepower voltage within nominal bounds in LTComm
 1. Using Commander RNH tab, **Turn on FC**
 1. Wait for FC to boot (about 30 seconds)
 1. Check telemetry server default tab and RNH tab for FC packets

-----------------------------------------------------------


At this point we are set up physicaly. The tower crew can come back to launch control if they need water or there is an expected wait time for launch.

## Pre Launch Software Testing

 1. Turn on all ports on the RNH using Commander
 1. Send version request and self test for each device using Commander default tab
    i. RNH
        -  Verify port faults for no unexpected errors
    i. FC
    i. IMU
    i. Roll
    i. RasPiCam 1
    i. RasPiCam 2
    i. GPS

#### Working Checks

 1. RNH
    i. Check telemetry viewer that port current draw is nominal
    i. Verify that umbilical detect is detecting the umbilical
    i. Verify battery is within nominal bounds and has no unexpected errors
 1. GPS
    i. In telemetry viewer look for stats
 1. IMU
    i. In telemetry viewer look for stats
 1. RasPiCam 1
    i. Bring up streaming view and check stream
 1. RasPiCam 2
    i. Bring up streaming view and check stream
 1. Roll
    i. Run test through commander
    i. Watch fin movement through RasPiCam stream

#### Post check

 1. Turn off everything but GPS and RNH
    i. FC     
    i. IMU     
    i. RasPiCam 1     
    i. RasPiCam 2
    i. Wifi PA
    i. Roll



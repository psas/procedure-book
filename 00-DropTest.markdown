---
title: Drop Tower Test
layout: base
---

# Drop Test Procedures

## Pretest (baseline)

Starting with the Avionics Stack on the rocket cart. Assumption is that the batteries are charged

 1. Verify that there are no spurious cables attached, and all flight cables are in place except for Battery and Dev Umbilical
    - All cables should have Retaining Nuts attached
    - Cable lengths should be secured to the Avionics Frame as if for flight
 1. Attach the Dev Umbilical Cable
 1. Attach the Flight Battery Cable and related Retaining Nuts
 1. Verify RNH powers up (green blinking LED)
 1. After RNH powers up use fc-test to power on all ports.
    - See Rocket Cart Procedures
 1. After FC boots ssh to the FC as root
 1. Git pull the FCF repo
 1. Build the FCF for flight
 1. Clean the log directory
 1. Start the FCF code
 1. Verify FCF is logging and telemetry is streaming to the telemetry viewer
 1. Remove the Dev Umbilical Cable
 1. Wait for some time
 1. Gently wiggle the cart as a time marker
 1. Wait for some time
 1. Reattach the Dev Umbilical Cable
 1. ssh into the FC
 1. Stop the FCF
 1. Copy log file to laptop, check into Launch-11/droptest
 1. Shutdown the FC
 1. Power down the FC and IMU
 1. Disconnect the battery cable

## Droptest

Starting with the FC stack on the rocket cart.

 1. Verify that there are no spurious cables attached, and flight cables are in place
 1. Set up as much drop tower as possible, so we can drop as soon as FC stack is running
 1. Attach the dev umbilical cable
 1. Attach flight battery cable
 1. Remove FC from cart and place in drop test enclosure
 1. **Place test rig in drop tower**
 1. Use fc-test to power on the IMU board and the FC
 1. After FC boots ssh to the FC as root
 1. Clean the log directory
 1. Start the FCF code
 1. Remove the dev umbilical cable
 1. **Countdown and drop**
 1. Reattach the dev umbilical cable
 1. ssh into the FC
 1. Stop the FCF
 1. Copy log file to laptop, check into Launch-11/droptest
 1. Shutdown the FC
 1. Power down the FC and IMU
 1. Disconnect the battery



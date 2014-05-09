---
title: Drop Tower Test
layout: base
---

# Drop Test Procedures

## Pretest (baseline)

Starting with the FC stack on the rocket cart.

 1. Verify that there are no spurious cables attached, and flight cables are in place
 1. Attach the dev umbilical cable
 1. Attach the flight battery cable
 1. After RNH powers up use fc-test to power on the IMU board and the FC
    - See Rocket Cart Procedures
 1. After FC boots ssh to the FC as root
 1. Build the FCF for flight
 1. Clean the log directory
 1. Start the FCF code
 1. Remove the dev umbilical cable
 1. Wait for some time
 1. Gently wiggle the cart as a time marker
 1. Reattach the dev umbilical cable
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



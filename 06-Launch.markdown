---
title: Launch Procedures
layout: base
---

# Launch Procedures

## Launch Control Setup 

## Telemetry Server

1. Run telemtry server
1. Connect to telemetry server

## Connection and Login
Include images of software in operation

## Ignition instructions

 1. Make sure the launch tower computer is operational and on the network as specified in lauch-tower-computer.md
 1. From a computer on the ground network, run the kivy app with ./ltc.py found in the PSAS repo launch-tower-comm/launch-tower-comm
 1. The app will come up breifly in the disconnected state, and then establish a connection to the LTC. This is indicated by the status indicator in the top right displaying "Nominal". 
 1. Verify all the values in the sensor display widget (bottom half of screen) are nominal.
 1. Shorepower can be turned on or off by clicking the aptly named buttons on the top left. The buttons will light up to indicate the status of shorepower.
 1. Until arming the launch tower is desired, shore power likely should be on.
 1. To arm the launch tower shorepower must be off. Once it is so the tower can be armed by clicking the "Arm" button.
 1. In the Armed state the top left buttons will swap over to "Ignite" and "Abort", and the status indicator will indicate "Armed" in a red font.
 1. To return to the unarmed state click abort.
 1. To proceed with ignition, click the Ignite button. A popup will ask you to confirm this action.
 1. To command the igniter to ignite, click the ignite button on the popup. Otherwise you can click abort to return to Armed screen.
 1. Once the popup ignite button has been pressed it will return to the Armed screen. When the LTC has confirmed that the igniter is active the Ignite button will turn blue and the status indicator will show "Ignited!" in teal text.
 1. Verify the rocket has launched. Visual cues include the rocket no longer being on the launch tower and a smoke trail leading off into the sky. Auditory cues include loud noises. 
 1. The LTCcom software will automatically turn off the igniter after 10 seconds. By pressing either the Ignite or Abort buttons the command to shut off the igniter can be sent early.

 # Launch Control Hardware

 ## Trackmaster 

 1. Plug in ethernet and power-over-ethernet (POE) injector.  

 ## Contingencies

 ### commander

 * Should startup automatically

## Basic Powerup

 1. Get rocket on pad
 1. Attach umbilical
 1. Run LTC-comm (chapter 7)
 1. Use LTC-com to turn on shore power
 1. Use commander to power on flight computer
 1. Attempt to verify telemetry
 1. Use commander to turn on the following
     * IMU
     * GPS
     * Raspberry Pi camera ONE
     * Raspberry Pi camera TWO
     * Roll
  1. Verify data streams through telemetry server over trackmaster WiFi
     link
  1. Send version commands to:
     * IMU
     * GPS
     * Raspberry Pi camera ONE
     * Raspberry Pi camera TWO
     * Roll
     * Flight computer
     * Rocket net hub


## Terminal Count

 1. Verify all power is on
 1. Clear area for launch
 1. Start RSO/LCO integration
 1. Restart loggers
 1. Turn off shore power
 1. Check ground
    - Telemetry
    - Video
    - TeleMetrium
 1. Check GPS lock
 1. Get in positions
    - Recovery eyes up
    - Cameras set
    - Trackmaster and spotter
 1. Go/No-go poll
    - LTC
    - Recovery
    - TeleMetrium
    - Video
    - Trackmaster
    - Telemetry
    - FCF
    - FD
 1. **ARM** rocket
 1. Start countdown
 1. Send ignite signal

 ## Contingencies

 ### SSH into flight computer

 ### Checking running processes on FC

 ### Debug wireless connection to FC

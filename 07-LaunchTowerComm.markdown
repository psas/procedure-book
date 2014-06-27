--- 
title: Launch Tower COMM
layout: base
---

# Launch Control Setup 

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

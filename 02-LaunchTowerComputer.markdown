---
title: Launch Tower Computer (LTC) Setup And Configuration
layout: base
---

TODO: * Update for use with new umbilical cable design (Ethernet, etc.)
      * Validate network config tables.


# Launch Day Procedures

## Launch Tower Team

1. Mount LTC enclosure to the launch tower.  (See "Mounting" section.)
2. Connect LTC to external power.  (See "Power Connections" section.)
3. Connect LTC to external data.  (See "Data Connections" section.)
4. Power on LTC.  (See "Power-On" section.)


## Launch Control Team

1. Wait for notice of launch tower computer power-up from launch tower
   team.  Open ssh session on LTC.  Notify launch tower team of
   results.
1. Wait for notice of ignition battery connection from launch tower
   team.  Verify proper voltage.  Notify launch tower team of results.
1. Begin LTC pre-launch test.



# Procedure Details

## Required Tools

* Miniature flathead screwdriver
* Miniature flathead screwdriver
* Large Phillips screwdriver


## Mounting To Tower

1. Mount LTC box to the launch tower.
1. Turn power and arming switches on side bulkhead to *off*.
1. Verify shorting bar is in place on side bulkhead.
1. Check fuse on side bulkhead.
1. Remove bottom plate cover from cable enclosure


## Power Connections

1. Run battery cables though bottom bulkhead opening A, and connect to
   upper left Powerpole connectors.
1. Run solar panel cables through bottom bulkhead opening A, and
   connect to lower left Powerpole connectors.
1. Run ignition cables through bottom bulkhead opening A, and connect
   to upper right Powerpole ports.
1. Verify that the following indicators are illuminated:
  * "BATT" LED on the power interface board
  * "SOLAR" LED on the power interface board

NB: Insert power leads through the bottom bulkhead opening one at a
time.  If you attempt to insert all three at once, they will not fit.


## Data Connections

1. Connect rocket umbilical cable to connector on lower left of bottom
   bulkhead.
1. Connect sensor data cable to connector on upper right of bottom
   bulkhead.  [FIXME: Is this connector still used?  The wires appear
   to be disconnected internally.]
1. Connect WiFi antenna cable to connector on lower right of bottom
   bulkhead.


## Power-On

1. Power on the LTC via the switch on the side bulkhead.  The LTC's
   power switch is the illuminated red switch located above the fuse
   holder, *not* the one labeled "OFF/ON".
1. Verify that the following indicators are illuminated:
  * LTC power switch
  * "PWR" LED on power interface board
  * "5V" LED on power interface board
  * "PWR" LED on ignition board
  * Power LED on BeagleBoard
  * USB hub power LED on BeagleBoard
1. Notify launch control team that LTC has been powered on.  Wait for
   launch control team to confirm a remote connection to the LTC.
1. Replace bottom bulkhead cover.
1. Connect internal ignition battery.  Notify launch control team of
   connection.


## LTC Login

1. Confirm LTC has been powered on.
1. Ping the LTC's WiFi interface to determine availability.
1. Open ssh session on LTC.  Login as "root".
1. Start the Phidget web service:
    # /phidgetwebservice/phidgetwebservice21 -v
1. Open another ssh session on LTC.  Login as "root".
  * A second session is necessary because the Phidget web service's
    "verbose" mode ties up the first session.
6. Start launch tower computer software:
  * TODO: More details.



# Reference

## Figures

![Side Bulkhead](diagrams/ltc/side_bulkhead.png)

![Bottom Bulkhead](diagrams/ltc/bottom_bulkhead.png)

![BeagleBoard](diagrams/ltc/beagleboard.png)

![Power Interface Board](diagrams/ltc/power_interface_board.png)

![Ignition Board](diagrams/ltc/ignition_board.png)


## LTC User Accounts

Username | Password
---------|---------
root     | psaslv1b
ltc      | ltc


## LTC Network Configuration

Parameter | Value
----------|------
WiFi IP Address | 192.168.128.250/24
Ethernet IP Address | 192.168.128.251/24


## LTC WiFi Access Point Configuration

Parameter        | Value
-----------------|------
Channel          | 802.11b, Ch. 1
SSID             | psas
WPA-2 Passphrase | psasrocket
AP IP Address    | 192.168.128.1
Static Range     | 192.168.128.10 - 192.168.128.40
DHCP Range       | 192.168.128.50 - 192.168.128.100


## Common LTC Commands

Reboot computer without delay:
    # reboot –t now

Shut down computer without delay:
    # poweroff –t now

View IP addresses assigned to network interfaces:
    # ip address show

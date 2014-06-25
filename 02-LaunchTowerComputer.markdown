---
title: Launch Tower Computer (LTC) Setup And Configuration
layout: base
---

# TODO

* Update for use with new umbilical cable design (Ethernet, etc.)
* Validate network config tables.
* More details on LTC software start-up.
* Update "LTC Login" for use with tmux.


# Launch Day Procedures

## Equipment List
* Launch tower computer box
* 12 volt battery (motorcycle type)
* Shorting bar
* Bottom plate cover for cable enclosure
* Solar Panels
* Ignitor cables
* debug wifi antenna for launch tower computer

## Launch Tower Team Task Overview

1. Mount LTC enclosure to the launch tower.  (See "Mounting" section.)
2. Connect LTC to external power.  (See "Power Connections" section.)
3. Connect LTC to external data.  (See "Data Connections" section.)
4. Apply power to LTC.  (See "Power-On" section.)


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
1. Remove cover plate from bottom bulkhead.

## Power Connections

1. Run battery cables though bottom bulkhead opening A, and connect to
   upper left Powerpole connector.
1. Run solar panel cables through bottom bulkhead opening A, and
   connect to lower left Powerpole connector.
1. Run ignition cables through bottom bulkhead opening A, and connect
   to upper right Powerpole connector.
1. Verify that the following indicators are illuminated:
  * "BATT" LED on the power interface board
  * "SOLAR" LED on the power interface board

NB: Insert power leads through the bottom bulkhead opening one at a
time.  If you attempt to insert all three at once, they will not fit.


## Data Connections

1. Connect rocket umbilical cable to connector on lower left of bottom
   bulkhead.
1. Connect WiFi antenna cable to connector on lower right of bottom
   bulkhead.


## Power-On
![Side Bulkhead](diagrams/ltc/side_bulkhead.png)
![BeagleBoard](diagrams/ltc/beagleboard.png)

1. Turn on the LTC power switch. (It should illuminate)
1. Verify that the following indicators are illuminated:
  * LTC power switch
  * "PWR" LED on power interface board
  * "5V" LED on power interface board
  * "PWR" LED on ignition board
  * Power LED on BeagleBoard
  * USB hub power LED on BeagleBoard
1. Notify launch control team that LTC has been powered on.  Wait for
   launch control team to confirm a remote connection to the LTC.
1. Replace bottom bulkhead cover plate.
1. Connect internal ignition battery.  Notify launch control team of
   connection.


## LTC Login

1. Wait for notification of LTC poweron.
1. Begin to ping the LTC on the wireless address.
1. Confirm LTC has been powered on.
1. Ping the LTC's WiFi interface to determine availability.
1. Open ssh session on LTC.  Login as "root".
1. Start the Phidget web service:

        # phidgetwebservice21 -v

1. Open another ssh session on LTC.  Login as "root".
  * A second session is necessary because the Phidget web service's
    "verbose" mode ties up the first session.
1. Start launch tower computer software:

       > python launch-tower-comm.py

## Launch Tower Computer Poweroff Sequence

1. Confirm filesystem is in read-only mode
1. poweroff -t now
1. Turn on power switch.
1. Disconnect all the cables

# Reference

## Suggested Radio Responses

1. LTC is connected to network: "I see your beagles coming in hot." -- Nathan
1. Confirm LTC you heard LTC is up: "Copy. Hot dogs on the move." -- Theo

![Hot Beagle](diagrams/hot_beagle.jpg)

## Figures

![Bottom Bulkhead](diagrams/ltc/bottom_bulkhead.png)

![Power Interface Board](diagrams/ltc/power_interface_board.png)

![Ignition Board](diagrams/ltc/ignition_board.png)


## LTC User Accounts

 Username | Password
 -------- | --------
 root     | psaslv1b
 ltc      | ltc


## LTC Network Configuration

 Parameter                  | Value
 -------------------------- | -----
 WiFi (wlan0) IP Address    | 10.0.0.13
 Ethernet (eth0) IP Address | 10.0.0.14
 USB Wifi Mac Address       | 00:c0:ca:32:b7:17
 Ethernet Mac Address       | 2a:d3:77:aa:1e:f7

## LTC WiFi Access Point Configuration

 Parameter        | Value
 ---------------- | -----
 Channel          | 802.11b ch. 1
 SSID             | psas
 WPA-2 Passphrase | psasrocket
 AP IP Address    | 10.0.0.1
 Static Range     | 10.0.0.2 - 10.0.0.49
 DHCP Range       | 10.0.0.50 - 10.0.0.249

## Common LTC Commands

 - Reboot computer without delay:

        # reboot –t now

 -  Shut down computer without delay:

        # poweroff –t now

 - View IP addresses assigned to network interfaces:

        # ip address show


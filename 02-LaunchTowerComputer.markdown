---
title: Launch Tower Computer
layout: base
---


# Launch Tower Computer Setup And Configuration

Image goes here


## Field Setup

### Tools Needed
* Miniature flathead screwdriver
* Miniature flathead screwdriver
* Large Phillips screwdriver

### Mounting On Tower
1. Mount LTC box to the launch tower.
TODO: figure
1. Turn power and arming switches on side bulkhead to *off*.
![LTC Side Bulkhead](diagrams/ltc_side_bulkhead.png)
1. Verify shorting bar is in place on side bulkhead.
1. Check fuse on side bulkhead.
1. Remove bottom plate cover from cable enclosure
TODO: figure

### Power Connections
Note: Route each powerpole connector one at a time and they will fit
through opening. If you attempt to run all three at once, they will
not fit.

1. Run Ignite leads through “bottom bulkhead” opening “A” and connect
   to 3&4
1. Run Battery leads though “bottom bulkhead” opening “A” and connect
   to 1&2
1. Run Solar Panel leads through “bottom bulkhead” opening “A” and
   connect to 5&6
![LTC Bottom Bulkhead Connectors](diagrams/ltc_bottom_bulkhead_connectors.png)
1. Verify that the following red LEDs on the Power Int. Board are
   illuminated:
  * "SOLAR"
  * "BATT"
![LTC Power Board Indicator Lights](diagrams/ltc_power_board_indicator_lights.png)

### Data Connections
1. Connect rocket umbilical to “bottom bulkhead” receptor “B”
1. Connect sensor data cable into “bottom bulkhead” receptor “C”
1. Connect Wireless antenna cable to “bottom bulkhead” receptor “D”


### Initialization
1. Power on the LTC via the switch on the side bulkhead.  (The LTC's
   power switch is the illuminated red switch located above the fuse
   holder, *not* the one labeled "OFF/ON".)


TODO: pick one of the following two item clusters
1. Look for lights on devices to indicate operation 
  * L7/L8/L9 should be flashing
  * L2/L6 should light
  * Note: if no lights – immediately turn off power and troubleshoot

1. Verify that the following power-related indicator lights are
    illuminated:
  * LTC power switch
  * "PWR" LED on Power Int. Board
  * "5V" LED on Power Int. Board
  * "PWR" LED on Ignition Board
  * Power LED on BeagleBoard
![LTC Ignition Board Indicator Lights](diagrams/ltc_ignition_board_indicator_lights.png)
![LTC BeagleBoard Indicator Lights](diagrams/ltc_beagleboard_indicator_lights.png)
1. Verify that the following indicator lights are illuminated:
  * USB hub power LED on BeagleBoard (green)


1. Replace bottom plate cover onto cable enclosure
1. Connect internal ignition battery. (verify?)
1. Begin login process for testing checkout


## Computer Setup

### Login
1. Open an SSH session
  * IP Address (wireless): 10.0.0.13
  * IP Address (wired): 10.0.0.14

Instructions fer setting up wifi:
https://help.ubuntu.com/community/WifiDocs/WiFiHowTo
    sh
    sudo /etc/init.d/networking stop
    sudo /etc/init.d/networking start

### Start Up

1. Power up the BeagleBoard
2. Begin pinging the IP address of the BeagleBoard to determine when
   up.  (Currently: 10.0.0.13)
3. Connect via SSH to BeagleBoard
4. Login as root user
  * Username: root
  * Password: psaslv1b 
5. Start the Phidget web service (verbose)
  * Because verbose flag any additional root control will require a
    separate SSH connection
  * /phidgetwebservice/phidgetwebservice21 -v
6. Start launch tower computer software


## Common Commands
Reboot Computer Instantly:
    #reboot –t now

Turn off computer instantly:
    #poweroff –t now

View IP Addresses assigned to interfaces:
    #ip address show


## Internal Connections

### PowerPole Connection
![PowerPole Connection](diagrams/Powerpole_Connection.png)

### Umbilical Connection
![Umbilical Connection](diagrams/Umbilical_Connection.png)

### Phidgets
![Phidgets](diagrams/Phidgets.png)


## Internal Routing

### LTC Connections Schematic
![LTC Connections Schematic](diagrams/LTC_connections_schematic.png)


## Bottom Bulkhead
![Bottom Bulkhead](diagrams/Bottom_Bulkhead.png)


## Side Bulkhead
![Side Bulkhead](diagrams/Side_Bulkhead.png)

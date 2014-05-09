# How to run the fc stack

Plug cart in
turn on power strip
 - wifi will come up. See note on router for password
attach JTAG dongles or usb/serial cables if nessecary
turn on battery
rnh should be on
 - can be verified by pinging 10.5
start FC test program
use localhost:5000/fc/ (second slash is nessecary) to turn on or off ports

## Fc specific
ping 10.10
ssh root@10.10. See note on FC for password
it is connected to the internet, you can use git to fetch code from github or wherever
to start the FCF ./startFC
stop with ./stopFC
**MAKE SURE FCF IS COMPILED WITH build_for_flight.sh**
see output from FCF on localhost:8080

### Other
boxes underneath contain cables and stuff

#!/bin/sh

# exports all variables
set -a

KEYMAPOPTS="us us"
HOSTNAMEOPTS="-n fit15s"
INTERFACESOPTS="
auto lo
iface lo inet loopback

auto eth0
iface eth0 inet dhcp
    hostname fit15s
"
DNSOPTS="-d example.com 8.8.8.8"
TIMEZONEOPTS="-z America/Araguaina"
PROXYOPTS="none"
APKREPOSOPTS="-1 -c"
SSHDOPTS="-c openssh"
NTPOPTS="-c openntpd"
DISKOPTS="-m sys /dev/sda"

########## post-install variables ##########
USER_NAME=hbr
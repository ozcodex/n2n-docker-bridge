#!/bin/bash
mkdir /dev/net 
mknod /dev/net/tun c 10 200 
ip tuntap add mode tap tap

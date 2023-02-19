#!/bin/bash

# Script: Ops 201 Class 03 Ops Challenge Solution 
# Author: Lamin Touray
# Date of latest revision: 14Feb2023
# Purpose: Create a script that…

Uses lshw to display system information to the screen about the following components:
Name of the computer
CPU
Product
Vendor
Physical ID
Bus info
Width
RAM
Description
Physical ID
Size
Display adapter
Description
Product
Vendor
Physical ID
Bus info
Width
Clock
Capabilities
Configuration
Resources
Network adapter
Description
Product
Vendor
Physical ID
Bus info
Logical name
Version
Serial
Size
Capacity
Width
Clock
Capabilities
Configuration
Resources





# Main
echo "Computer Name"
sudo lshw | grep -m1 'product:' 

#display the cpu info
echo "CPU Info"
sudo lshw | grep -A 5 'cpu' | grep -E 'product:|vendor:|physical id:|bus info:|width:' | grep -v 'bus info:'

#display the ram info
echo "RAM Info"
sudo lshw | grep -A 6 'memory' | grep -E 'description:|physical id:|size:'

#display the display adapter info
echo "Display Adapter"
sudo lshw | grep -A 14 'display' | grep -E 'description:|product:|vendor:|physical id:|bus info:|width:|clock:|capabilities:|configuration:|resources:'

#display the network adapter info
echo "Network Adapter"
sudo lshw | grep -A 20 'network' | grep -E 'description:|product:|vendor:|physical id:|bus info:|logical name:|version:|serial:|size:|capacity:|width:|clock:|capabilities:|configuration:|resources:'


#End

# End
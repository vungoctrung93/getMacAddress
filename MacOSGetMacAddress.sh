#!/bin/bash

networksetup -listallhardwareports | awk '
/Hardware Port/ {port=$3; for(i=4;i<=NF;i++) port=port " " $i}
/Device/ {dev=$2}
/Ethernet Address/ {
  printf "Name: %s\nMAC address: %s\n\n", port, $3
}'

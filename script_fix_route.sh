#!/bin/bash

_net="192.168.200.0"
_mask="255.255.255.0"

while [[ true ]]; do
    _gateway="$(sudo route -n | grep ppp0 | awk 'NR==1 {print $2}')"
    if [ -n "$_gateway" ]; then
        sudo route add -net $_net netmask $_mask gw $_gateway dev ppp0
        break
    fi
done

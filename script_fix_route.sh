#!/bin/bash

_net_list="192.168.254.0 192.168.255.0"
_mask="255.255.255.0"

while [[ true ]]; do
    _gateway="$(route -n | grep ppp0 | awk 'NR==1 {print $2}')"
    if [[ "$_gateway" == "192.168."* ]]; then
        for _net in $_net_list; do
            route add -net $_net netmask $_mask gw $_gateway dev ppp0
        done
        break
    else
        sleep 1
    fi
done

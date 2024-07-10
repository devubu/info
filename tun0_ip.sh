#!/bin/bash

function display_help() {
    echo "Usage: $0 [option]"
    echo
    echo "This script retrieves the IP address of the 'tun0' interface."
    echo
    echo "Options:"
    echo "  --help, -help, -h    Display this help message and exit"
}

if [[ $1 == "--help" || $1 == "-help" || $1 == "-h" ]]; then
    display_help
    exit 0
fi

ip addr show tun0 | grep 'inet ' | awk '{print $2}' | cut -d '/' -f 1

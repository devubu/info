#!/bin/bash

function display_help() {
    echo "Usage: $0 [option]"
    echo
    echo "This script prints the contents of the /etc/hosts file."
    echo
    echo "Options:"
    echo "  --help, -help, -h    Display this help message and exit"
}

if [[ $1 == "--help" || $1 == "-help" || $1 == "-h" ]]; then
    display_help
    exit 0
fi

cat /etc/hosts

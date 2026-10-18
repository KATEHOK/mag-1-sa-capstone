#!/usr/bin/env bash

timeout_seconds=10

echo_separator() {
    echo "---------------------------------------"
}

echo_block() {
    echo "--- $(date) ---"
    
    free -h
    echo_separator
    
    df -h
    echo_separator
    
    uptime
    echo_separator

    echo ""
}

while true; do
    echo_block >> "monitor.log"
    sleep "$timeout_seconds"
done
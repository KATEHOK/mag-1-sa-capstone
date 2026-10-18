#!/usr/bin/env bash

cleanup() {
    echo ""
    exit 0
}

echo_cmd_failed() {
    echo "$(date): '$1' failed" >> "$err_file"
}

echo_separator() {
    echo "---------------------------------------"
}

echo_block() {
    echo "--- $(date) ---"
    
    free -h         || echo_cmd_failed "free"
    echo_separator
    
    df -h           || echo_cmd_failed "df"
    echo_separator
    
    uptime          || echo_cmd_failed "uptime"
    echo_separator

    echo ""
}

timeout_seconds=10
out_file="monitor.log"
err_file="monitor.err"

set -uo pipefail

trap cleanup SIGINT SIGTERM

while true; do
    echo_block >> "$out_file"
    sleep "$timeout_seconds"
done
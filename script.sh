#!/usr/bin/env bash

output_file="monitor.log"
timeout_seconds=10
separator="---------------------------------------"


echo "--- $(date) ---" >> "$output_file"
free -h >> "$output_file"
echo "$separator" >> "$output_file"
df -h >> "$output_file"
echo "$separator" >> "$output_file"
uptime >> "$output_file"
echo "" >> "$output_file"
#!/bin/bash

# Function to get total CPU usage
get_cpu_usage() {
    echo "=== Total CPU Usage ==="
    top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8 "%"}'
    echo
}

# Function to get memory usage
get_memory_usage() {
    echo "=== Total Memory Usage ==="
    free -m | awk 'NR==2 {printf "Used: %dMB (%.2f%%), Free: %dMB (%.2f%%)\n", $3, $3/$2*100, $4, $4/$2*100}'
    echo
}

# Function to get disk usage
get_disk_usage() {
    echo "=== Total Disk Usage ==="
    df -h --total | awk '$1 == "total" {printf "Used: %s (%s), Free: %s\n", $3, $5, $4}'
    echo
}

# Function to get top 5 processes by CPU usage
get_top_cpu_processes() {
    echo "=== Top 5 Processes by CPU Usage ==="
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
    echo
}

# Function to get top 5 processes by memory usage
get_top_memory_processes() {
    echo "=== Top 5 Processes by Memory Usage ==="
    ps -eo pid,comm,%mem --sort=-%mem | head -n 6
    echo
}

# Main script execution
echo "=== Server Performance Stats ==="
get_cpu_usage
get_memory_usage
get_disk_usage
get_top_cpu_processes
get_top_memory_processes


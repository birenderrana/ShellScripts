#!/bin/bash

# =================================================================
# Script Name: system_monitor.sh
# Description: Monitors CPU, Memory, and Disk usage. 
#              Alerts the user if thresholds are exceeded.
# =================================================================

# --- Configuration:Thresholds(%) ---
THRESHOLD_CPU=80
THRESHOLD_MEM=80
THRESHOLD_DISK=90

echo "--- Starting System Health Check ---"
echo "Report Generated on: $(date)"
echo "------------------------------------"

# 1. Check CPU Usage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}' | cut -d. -f1)
echo "CPU Usage: $CPU_USAGE%"

if [ "$CPU_USAGE" -gt "$THRESHOLD_CPU" ]; then
    echo "[ALERT] CPU usage is dangerously high!"
fi

# 2. Check Memory Usage
MEM_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}' | cut -d. -f1)
echo "Memory Usage: $MEM_USAGE%"

if [ "$MEM_USAGE" -gt "$THRESHOLD_MEM" ]; then
    echo "[ALERT] Memory usage is above $THRESHOLD_MEM%!"
fi

# 3. Check Disk Usage
DISK_USAGE=$(df -h / | grep / | awk '{ print $5 }' | sed 's/%//g')
echo "Disk Usage (Root): $DISK_USAGE%"

if [ "$DISK_USAGE" -gt "$THRESHOLD_DISK" ]; then
    echo "[ALERT] Disk space is running low!"
fi

echo "------------------------------------"
echo "Health Check Complete."

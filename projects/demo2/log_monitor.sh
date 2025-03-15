#!/bin/bash

# =========================================
# Log Monitoring and Automated Cleanup System
# Automates log file management for system health monitoring
# Author: Md. Mostafa Al Mahmud
# =========================================

LOG_DIR="/var/log/custom_logs"  # Directory where logs are stored
BACKUP_DIR="/var/log/custom_logs_backup"  # Backup directory
LOG_FILE="$LOG_DIR/system_health.log"  # Log file path
DAYS_TO_KEEP=7  # Number of days to keep logs
VERBOSE=false  # Debugging flag

# Function: Ensure necessary directories exist
setup_environment() {
    mkdir -p "$LOG_DIR" "$BACKUP_DIR"
    touch "$LOG_FILE"
    echo "Log Monitoring System Initialized!" | tee -a "$LOG_FILE"
}

# Function: Monitor system health and log CPU, memory usage
monitor_system() {
    echo "Recording system health at $(date)" | tee -a "$LOG_FILE"
    echo "--------------------------------------" >> "$LOG_FILE"
    echo "CPU Usage: $(top -bn1 | grep 'Cpu' | awk '{print $2}')%" >> "$LOG_FILE"
    echo "Memory Usage: $(free -m | awk 'NR==2{print $3}')MB" >> "$LOG_FILE"
    echo "Disk Usage: $(df -h | awk '$NF=="/"{print $5}')" >> "$LOG_FILE"
    echo "--------------------------------------" >> "$LOG_FILE"
}

# Function: Cleanup old logs
cleanup_logs() {
    find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS_TO_KEEP -exec rm {} \;
    echo "Old logs older than $DAYS_TO_KEEP days deleted at $(date)" | tee -a "$LOG_FILE"
}

# Function: Backup logs
backup_logs() {
    BACKUP_FILE="$BACKUP_DIR/backup_$(date +%F-%H%M%S).tar.gz"
    tar -czf "$BACKUP_FILE" "$LOG_DIR" 2>/dev/null
    echo "Logs backed up at $(date): $BACKUP_FILE" | tee -a "$LOG_FILE"
}

# Function: Display help message
show_help() {
    echo "Usage: $0 [options]"
    echo "Options:"
    echo "  -m  Monitor system health"
    echo "  -c  Cleanup old logs"
    echo "  -b  Backup logs"
    echo "  -v  Enable verbose mode"
    echo "  -h  Show help"
}

# Parse command-line arguments
while getopts "mcbvh" opt; do
    case $opt in
        m) monitor_system ;;
        c) cleanup_logs ;;
        b) backup_logs ;;
        v) VERBOSE=true ;;
        h) show_help ;;
        *) show_help ;;
    esac
done

# If no arguments provided, run all tasks
if [[ $# -eq 0 ]]; then
    setup_environment
    monitor_system
    cleanup_logs
    backup_logs
fi

# Debugging (if verbose mode is enabled)
if [ "$VERBOSE" = true ]; then
    echo "Debugging Info:"
    echo "LOG_DIR=$LOG_DIR"
    echo "BACKUP_DIR=$BACKUP_DIR"
    echo "DAYS_TO_KEEP=$DAYS_TO_KEEP"
fi

#!/bin/bash

# Automating Filesystem Tasks ====================
# 📌 Script to Automatically Backup Log Files

LOG_DIR="/var/log"
BACKUP_DIR="/backup/logs"
mkdir -p "$BACKUP_DIR"

find "$LOG_DIR" -name "*.log" -mtime +7 -exec mv {} "$BACKUP_DIR" \;

echo "Old logs moved to $BACKUP_DIR"


# Auto-Setup Project Structure ===============================
# Creates new microservice folder structure named payment-service
# Creates directories
SERVICE_NAME="payment-service"
mkdir -p ${SERVICE_NAME}/{src,logs,config/env}  
touch ${SERVICE_NAME}/config/env/prod.yaml
echo "Directory structure for ${SERVICE_NAME} created!"




# Log Rotation ================
# Archive logs older than 7 days
find /var/log/app/ -name "*.log" -mtime +7 -exec tar -czvf /backup/old_logs_$(date +%F).tar.gz {} \; -exec rm {} \;



# Safe Cleanup =========================
# Delete temporary files but exclude .pid files
find /tmp/ -type f -not -name "*.pid" -mtime +1 -delete


# (Rsync & Tar) ===============
# Sync files efficiently (ideal for backups)
rsync -avz --delete /source/ user@remote:/backup/  # Mirror source to remote


# Tar: Compress/Archive
tar -czvf app_backup_$(date +%F).tar.gz /app  # Create
tar -xzvf backup.tar.gz -C /restore           # Extract
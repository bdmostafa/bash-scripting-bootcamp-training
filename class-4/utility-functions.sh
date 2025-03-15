#!/bin/bash

# # 1. Logging messages with timestamps in DevOps automation scripts
# # Define a function
# log_message() {
#     echo "$(date +'%Y-%m-%d %H:%M:%S') - $1"
# }

# # Call the function
# log_message "Script execution started"



# # 2. Automatically creating backups of configuration files before changes
# # Using Parameters in Functions
# backup_file() {
#     cp "$1" "$1.bak"
#     echo "Backup of $1 created as $1.bak"
# }

# # Call function
# backup_file /etc/nginx/nginx.conf





# # 3. Monitoring disk usage and alerting when critical
# # Return Values and Exit Status
# check_disk_space() {
#     usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
#     if [ "$usage" -gt 10 ]; then
#         echo "Warning: Disk usage is above 80%!"
#         return 1
#     fi
#     return 0
# }

# # Call function and handle return status
# check_disk_space || echo "Take action: Free up space!"


# System Health Check (alternative example using local var)
log_message() {
  local level=$1
  local message=$2
  local log_file="${3:-./app.log}"  # Default to ./app.log if not provided
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] [$level] $message" >> "$log_file"
}

# Disk usage checker
check_disk() {
  local threshold=$1
  local usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
  [ "$usage" -gt "$threshold" ] && log_message "ALERT" "Disk usage: $usage%"
#   [ "$usage" -gt "$threshold" ] && log_message "ALERT" "Disk usage: $usage%" "/var/log/myapp.log"
}

check_disk 80  # Alert if disk >80%

# Log rotation
if [ -f ./app.log ] && [ $(wc -l < ./app.log) -gt 1000 ]; then
  mv ./app.log ./app.log.old
fi




# # 4. Prevents accidental deletion of non-existing files
# # Error Handling in Utility Functions
# safe_remove() {
#     if [ -f "$1" ]; then
#         rm "$1"
#         echo "$1 removed."
#     else
#         echo "Error: $1 does not exist!" >&2
#     fi
# }

# # Call function
# safe_remove important_file.txt





# # 5. Running bulk operations on multiple files efficiently
# # Function to process multiple files (Looping)
# process_files() {
#     for file in "$@"; do
#         echo "Processing $file..."
#     done
# }

# # Call function with multiple arguments
# process_files file1.txt file2.log file3.conf






# # 6. Automating service restarts after deployment (automation)
# restart_service() {
#     systemctl restart "$1" && echo "$1 restarted successfully" || echo "Failed to restart $1"
# }

# restart_service nginx







# # 7. Logging Function
# log() {
#   local level=$1
#   local message=$2
#   echo "[$(date '+%Y-%m-%d %H:%M:%S')] [$level] $message" >> /var/log/app.log
# }

# # Usage: log "ERROR" "Deployment failed!"






# # 8. Error Handler
# die() {
#   echo "$1" >&2  # Print to stderr
#   exit 1
# }
# # Usage: [ -f "config.yaml" ] || die "Missing config.yaml"






# # 9. Input Validator
# validate_port() {
#   if ! [[ "$1" =~ ^[0-9]+$ ]] || [ "$1" -gt 65535 ]; then
#     die "Invalid port: $1"
#   fi
# }






# # 10. Automatically backup within tarball folder
# backup_dir() {
#   local src=$1
#   local dest="/backup/$(basename $src)_$(date +%F).tar.gz"
#   tar -czf "$dest" "$src" || die "Backup failed for $src"
#   echo "Backup created: $dest"
# }
# # Usage: backup_dir "/etc/nginx"





# # 11. Cloud storage sync
# sync_to_s3() {
#   aws s3 sync "$1" "s3://$2" --delete || log "WARN" "S3 sync failed!"
# }
# # Usage: sync_to_s3 "/app/data" "my-bucket/app-data"



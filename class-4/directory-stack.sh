#!/bin/bash

# # Basic Usage of Directory Stack =====================
# mkdir -p /tmp/devops_project/logs /tmp/devops_project/scripts
# cd /tmp/devops_project

# # Save the current directory to stack and move to logs
# pushd logs
# # pushd logs → Moves into the logs directory while saving the previous path.
# echo "Now in $(pwd)"

# # Go back to the previous directory
# popd
# # popd → Returns to /tmp/devops_project by popping logs from the stack.
# echo "Returned to $(pwd)"




# # Viewing the Directory Stack ==================================
# pushd /etc
# pushd /var/log
# pushd /home/user

# # Display stack
# # dirs -v → lists directories in order, with index numbers.
# dirs -v

# # Output
# # 0  /home/user   → 0 is always the current directory.
# # 1  /var/log
# # 2  /etc
# # 3  /previous-directory



# # Automating Directory Navigation ======================

# # Store important log directories
# pushd /var/log
# pushd /var/log/nginx
# pushd /var/log/mysql

# # Display stack
# dirs -v

# # Move back to the previous directory
# popd
# echo "Now in $(pwd)"

# popd
# echo "Now in $(pwd)"




# # Advanced DevOps Script - Log Analysis Using Directory Stack =========================

# log_dirs=("/var/log" "/var/log/nginx" "/var/log/mysql")
# search_term="ERROR"

# # Loop through log directories
# for dir in "${log_dirs[@]}"; do
#     if [ -d "$dir" ]; then
#         pushd "$dir" > /dev/null
#         echo "Searching in $(pwd)..."
        
#         # Search for errors in log files
#         grep -i "$search_term" *.log 2>/dev/null

#         popd > /dev/null
#     fi
# done




# Alias - for qucik navigation ===============
alias goLogs="pushd /var/log"
alias goNginx="pushd /var/log/nginx"
alias back="popd"


goLogs  # Moves to /var/log and saves previous location
goNginx # Moves to /var/log/nginx
back    # Returns to the last location


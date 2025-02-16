#  Listing and Navigating Filesystem

pwd                  # Print current directory
ls -lah              # List files with details
cd /var/log          # Change directory
ls -l *.log          # List only log files

# Directory and File Management
mkdir my_project                     # Create a directory
touch my_project/app.py               # Create an empty file
cp my_project/app.py my_project/app.bak  # Copy file
mv my_project/app.py /backup/         # Move file to another directory
rm -rf my_project                     # Delete directory and contents


# Copying and Moving Files
cp /etc/nginx/nginx.conf /backup/nginx.conf  # Copy a file
cp -r /etc/nginx /backup/                    # Copy a directory
mv /var/log/syslog /var/log/syslog_old        # Rename a file
mv /tmp/test.log /var/log/                    # Move a file


# File Permissions and Ownership
chmod 755 script.sh                   # Set executable permission
chmod -R 644 /var/www/html             # Set read-write permissions for web files
chown user:group file.txt              # Change file owner and group
chown -R user:group /var/www/          # Change ownership recursively
chmod 644 file.txt                     # Set read & write permissions for owner, read-only for others
chmod +x script.sh                     # Make a script executable
chown root:root file.txt               # Change file ownership



# Finding and Synchronizing Files
find /var/log -name "*.log"           # Find log files
find /home/user -type f -size +10M    # Find files larger than 10MB
rsync -av /source/ /destination/      # Sync files between directories
rsync -avz user@remote:/backup/ /local/  # Sync files between remote and local system


# Finding and Searching Files
find /var/log -name "*.log"       # Find all log files
find /etc -type f -size +1M       # Find files larger than 1MB
grep -i "error" /var/log/syslog   # Search for errors in logs

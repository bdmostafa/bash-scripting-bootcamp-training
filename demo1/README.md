# DevOps BootCamp - Shell Scripting Demo Projects

Welcome to the DevOps BootCamp demo projects for Shell Scripting! In this repository, you will find practical examples of automating routine system tasks using shell scripting on AWS EC2. This will help you automate updates, backups, log management, and more.

## Demo Projects Overview

### 1. Automating System Updates
Automate the update process on an EC2 instance using a shell script and cron job. The script will update the system and log the output.

### 2. Log Cleanup Automation
Create a shell script to delete old log files (older than 7 days) and schedule it with cron.

### 3. Automating Backups to S3
Backup files from your EC2 instance to an S3 bucket using shell scripting and AWS CLI.

### 4. EC2 Auto-Scaling Based on CPU Usage
Monitor the CPU usage and scale your EC2 instance automatically when CPU usage exceeds a set threshold.

---

## Steps for Setting Up and Running the Demo Projects

### Step 1: Log into AWS and Launch an EC2 Instance
1. Login to AWS Console
2. Go to EC2 and Launch an EC2 Instance
3. Select Amazon Linux 2 (or Ubuntu) as the OS
4. Choose instance type: t2.micro (Free tier eligible)
5. Configure Security Group for SSH (port 22)
6. Launch the instance and get the public IP

---

### Step 2: Connect to EC2 and Set Up the Environment
1. Connect via SSH using:
    ```bash
    ssh -i your-key.pem ec2-user@your-ec2-public-ip
    ```
2. Update the system:
    ```bash
    sudo yum update -y  # For Amazon Linux
    sudo apt update -y  # For Ubuntu
    ```

---

### Step 3: Create and Run the Shell Scripts

1. **Automating System Updates:**
   Create a script (`update_script.sh`) and schedule it with cron.

2. **Log Cleanup Automation:**
   Create a script (`log_cleanup.sh`) and schedule it with cron.

3. **Automating Backups to S3:**
   Create a script (`s3_backup.sh`) to backup data to S3 daily.

4. **Auto-Scaling EC2 Based on CPU Usage:**
   Create a script (`cpu_monitor.sh`) that monitors CPU usage and scales EC2 when the CPU exceeds 80%.

---

### Step 4: Validate the Automation
Run and test all scripts manually to ensure everything works as expected:

```bash
./update_script.sh
./log_cleanup.sh
./s3_backup.sh
./cpu_monitor.sh
```

### Step 5: Monitor Logs and Verify
1. **Check the logs for each automation:**

```bash
cat /var/log/sys_update.log
cat /var/log/log_cleanup.log
cat /var/log/s3_backup.log
cat /var/log/cpu_monitor.log
```

2. **Verify S3 backups:**

```bash
aws s3 ls s3://your-s3-bucket-name/
```

---

## Steps to create script files

### Script File

Create the following script files for each demo.

1. **`update_script.sh`**

```bash
#!/bin/bash
echo "Updating the system..." >> /var/log/sys_update.log
sudo yum update -y >> /var/log/sys_update.log 2>&1
echo "Update completed at $(date)" >> /var/log/sys_update.log
```

2. **`log_cleanup.sh`**

```bash
#!/bin/bash
LOG_DIR="/var/log"
find $LOG_DIR -name "*.log" -mtime +7 -exec rm -f {} \;
echo "Old logs deleted at $(date)" >> /var/log/log_cleanup.log
```

3. **`s3_backup.sh`**

```bash
#!/bin/bash
BUCKET_NAME="your-s3-bucket-name"
BACKUP_DIR="/home/ec2-user/backup"
TIMESTAMP=$(date +%F-%H%M%S)
ARCHIVE="backup-$TIMESTAMP.tar.gz"

# Ensure the backup directory exists
mkdir -p $BACKUP_DIR

# Create backup archive
tar -czvf $ARCHIVE -C /home/ec2-user backup/

# Upload backup to S3
aws s3 cp $ARCHIVE s3://$BUCKET_NAME/

# Log the backup status
echo "Backup uploaded at $(date)" >> /var/log/s3_backup.log
```

4. **`cpu_monitor.sh`**

```bash
#!/bin/bash
THRESHOLD=80
CPU_LOAD=$(uptime | awk -F'load average:' '{ print $2 }' | cut -d, -f1 | awk '{print int($1)}')

if [ $CPU_LOAD -gt $THRESHOLD ]; then
    aws autoscaling update-auto-scaling-group --auto-scaling-group-name my-asg --desired-capacity 2
    echo "CPU usage high, scaled up EC2 instances at $(date)" >> /var/log/cpu_monitor.log
fi
```


# Conclusion
You have successfully automated routine tasks on AWS EC2 using Shell Scripting! 🎉

Feel free to extend these examples by adding more complex automation tasks, such as integrating `Lambda` or `Terraform`.


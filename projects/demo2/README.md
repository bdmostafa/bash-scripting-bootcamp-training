# Log Monitoring and Automated Cleanup System

This project demonstrates a shell script that automates log file management for system health monitoring. The script includes functionalities for monitoring system resources (CPU, memory, disk usage), cleaning up old log files, backing up logs, and scheduling automated tasks using cron jobs.

## Table of Contents

- [Project Overview](#project-overview)
- [Script Overview](#script-overview)
- [Features](#features)
- [How to Use](#how-to-use)
- [Cron Job Automation](#cron-job-automation)
- [Key Concepts Covered](#key-concepts-covered)
- [License](#license)

## Project Overview

The **Log Monitoring and Automated Cleanup System** is a shell script designed to:

- Monitor system health (CPU, memory, disk usage).
- Perform automated cleanup of old log files.
- Backup logs periodically.
- Provide a command-line interface for customizations and debugging.
- Schedule automated tasks using cron jobs.

## Script Overview

The shell script includes the following key functions:

1. **setup_environment**: Ensures necessary directories exist for logs and backups.
2. **monitor_system**: Monitors system health and logs CPU, memory, and disk usage.
3. **cleanup_logs**: Deletes logs older than a specified number of days.
4. **backup_logs**: Creates a backup of the logs in a compressed format.
5. **show_help**: Displays help and usage instructions.
6. **Command-line Arguments**: Supports options for monitoring, cleanup, backup, verbose mode, and help.

## Features

- **Customizable Log Directory**: Configure where logs are stored and backed up.
- **Monitoring**: Periodically records system health, including CPU, memory, and disk usage.
- **Cleanup**: Automatically deletes logs older than a specified number of days.
- **Backup**: Backs up logs into a compressed file.
- **Verbose Mode**: Enable detailed output for debugging.
- **Cron Jobs**: Schedule the script to run at specified intervals for automation.

## How to Use

1. **Create and open the script file**:

    ```bash
    nano log_monitor.sh
    ```

2. **Paste the script** and save it (Ctrl + X, then Y, then Enter).
3. **Make the script executable**:

    ```bash
    chmod +x log_monitor.sh
    ```

4. **Run the script** with various options:

    - **Run all operations (monitor, cleanup, backup)**:

      ```bash
      ./log_monitor.sh
      ```

    - **Monitor system health only**:

      ```bash
      ./log_monitor.sh -m
      ```

    - **Cleanup old logs**:

      ```bash
      ./log_monitor.sh -c
      ```

    - **Backup logs**:

      ```bash
      ./log_monitor.sh -b
      ```

    - **Enable verbose mode**:

      ```bash
      ./log_monitor.sh -v
      ```

## Cron Job Automation

To automate the script, use **cron jobs** to schedule tasks at specific intervals.

1. **Edit the cron schedule**:

    ```bash
    crontab -e
    ```

2. **Add the following cron jobs**:

    ```bash
    */5 * * * * /path/to/log_monitor.sh -m   # Runs system monitoring every 5 minutes
    0 3 * * * /path/to/log_monitor.sh -c     # Runs log cleanup at 3 AM
    0 4 * * * /path/to/log_monitor.sh -b     # Runs log backups at 4 AM
    ```

## Key Concepts Covered

- **Variables**: Define log paths, backup locations, and retention periods.
- **Loops**: Used for cleaning up old logs.
- **Conditionals**: Handle verbose mode, argument processing, and help options.
- **Functions**: Modular design with functions like `monitor_system()`, `cleanup_logs()`, and `backup_logs()`.
- **File Handling**: Create logs, delete old files, and backup logs.
- **Command-line Arguments**: Support for options like `-m`, `-c`, `-b`, `-v`, and `-h`.
- **Error Handling**: Redirect errors during backup.
- **Cron Job Automation**: Schedule automatic tasks.



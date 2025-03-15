# Web App Create & Deployment Script (React/Angular) on AWS EC2

## Overview
This script allows you to automatically create, build, and serve a `React` or `Angular` project on an AWS `EC2` instance. It also manages the process using `PM2` and configures `Nginx` as a reverse proxy to serve the application.

### Prerequisites
Before running the script, ensure you have:

- AWS EC2 Instance with a public IP.
- SSH access to the EC2 instance.
- Node.js, Nginx, and PM2 will be installed automatically by the script.
- A web browser to test the deployment.

### Usage
1️⃣ Clone the Repository and Upload Script.
If you don’t have the script yet, upload the `deploy_web_app.sh` script to your `EC2` instance.


```
scp -i your-ec2-key.pem deploy_web_app.sh ec2-user@your-ec2-public-ip:/home/ec2-user/
```
2️⃣ Give the Script Execute Permissions
On your EC2 instance, change the script's permissions to make it executable:

```
chmod +x deploy_web_app.sh
```

3️⃣ Run the Script with Parameters
You can run the script with the following parameters:

### You can run the script with the following parameters:

**`project_name`**: The name of the project (e.g., my-app, my-angular-app).

**`framework`**: Choose between react or angular for the framework.

**`port`**: The port on which the app should run (e.g., 3000 for React, 4200 for Angular).

### Example 1: Deploy a React App on Port 3000

```
./deploy_web_app.sh my-react-app react 3000
```

### Example 2: Deploy an Angular App on Port 4200

```
./deploy_web_app.sh my-angular-app angular 4200
```

## Script Details
### Steps the Script Performs:
- **Install Dependencies:**

  - The script installs the necessary packages for `Node.js`, `Nginx`, and `PM2`.
  - It configures the system and installs the required tools for running the application.

- **Create Project:**

  - Based on the framework parameter (react or angular), it will create a new project in the EC2 instance.
  - For React, it uses npx create-react-app.
  - For Angular, it uses ng new.

- **Build Project:**

  - The project is built using the respective build command:
    - React: `npm run build`
    - Angular: `ng build --configuration production`

- **Serve the Application:**

  - The script uses PM2 to serve the app and ensure it runs continuously.
  - It configures PM2 to serve the built project on the specified port.

- **Configure Firewall:**

  - The script opens the specified port on the EC2 instance firewall to allow incoming traffic.

- **Configure Nginx:**

  - The script configures Nginx as a reverse proxy to forward requests from port 80 to the application running on the specified port.
  - It automatically updates the Nginx configuration and restarts the service.

- **Deployment Completion:**

  - Once the process is complete, the script outputs the public EC2 URL where the app can be accessed.
  
### Example Output
After running the script, you should see output like:
```
2025-03-15 12:00:00 - Updating system and installing dependencies...
2025-03-15 12:05:00 - Creating react project: my-react-app...
2025-03-15 12:10:00 - Building react project...
2025-03-15 12:20:00 - Serving project on port 3000...
2025-03-15 12:25:00 - Configuring firewall and Nginx...
2025-03-15 12:30:00 - Deployment completed! Access your app at http://<EC2_PUBLIC_IP>
```

## Accessing Your App
After the script completes, you can access the application in your web browser using the public IP address of your EC2 instance:

```
http://<your-ec2-public-ip>
```

## Troubleshooting
- **Error: "PM2 failed to start"**

  - Ensure that PM2 is installed globally: `sudo npm install -g pm2`.
  - Restart the EC2 instance and try again.

- **Error: "Nginx not starting"**

  - Check the Nginx configuration files: sudo nginx -t.
  - Restart Nginx with: sudo systemctl restart nginx.

- **Port 80 not open:**

  - Make sure that the correct port is open in your EC2 security group and that firewall rules allow traffic.

- **Port is not allowed in inboud rules**

  - Update EC2 Security Group inbound rules accessing custom `TCP` port `3000` or `4200` or as you need

## Script Customization
 - Change default port: Modify the PORT variable in the script to set a different default port.
 - Framework choice: The script supports both React and Angular. Just pass react or angular as a parameter.


This project is licensed under the MIT License - see the LICENSE file for details.

This `README.md` should provide students with a complete guide on how to use the `deploy_web_app.sh` script effectively and troubleshoot common issues. 

If you need any further adjustments or encounter any problems expressing your opinion, please let me know or create an issue in the project.
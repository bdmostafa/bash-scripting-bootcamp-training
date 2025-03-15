#!/bin/bash

# ===============================
# Web App Deployment Script (React/Angular)
# Deploys a React or Angular app on AWS EC2
# Usage: ./deploy_web_app.sh <project_name> <framework> <port>
# Author: Md. Mostafa Al Mahmud
# ===============================

# Parameters
PROJECT_NAME=${1:-"my-app"}      # Default: my-app
FRAMEWORK=${2:-"react"}          # Default: React
PORT=${3:-3000}                  # Default: 3000

# Set paths
APP_DIR="/home/ec2-user/$PROJECT_NAME"
LOG_FILE="/var/log/$PROJECT_NAME-deploy.log"

# Log function
log() {
    echo "$(date) - $1" | tee -a "$LOG_FILE"
}

# Install required packages
install_dependencies() {
    log "Updating system and installing dependencies..."
    sudo yum update -y
    curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
    sudo yum install -y nodejs git nginx
    sudo npm install -g pm2
}

# Create project
create_project() {
    log "Creating $FRAMEWORK project: $PROJECT_NAME..."
    mkdir -p "$APP_DIR"
    cd "$APP_DIR"

    if [[ "$FRAMEWORK" == "react" ]]; then
        npx create-react-app "$PROJECT_NAME"
        cd "$PROJECT_NAME"
        npm install
    elif [[ "$FRAMEWORK" == "angular" ]]; then
        npm install -g @angular/cli
        ng new "$PROJECT_NAME" --defaults
        cd "$PROJECT_NAME"
        npm install
    else
        log "Invalid framework! Use 'react' or 'angular'."
        exit 1
    fi
}

# Build project
build_project() {
    log "Building $FRAMEWORK project..."
    if [[ "$FRAMEWORK" == "react" ]]; then
        npm run build
    elif [[ "$FRAMEWORK" == "angular" ]]; then
        ng build --configuration production
    fi
}

# Serve project using PM2
serve_project() {
    log "Serving project on port $PORT..."
    if [[ "$FRAMEWORK" == "react" ]]; then
        pm2 serve build $PORT --spa --name "$PROJECT_NAME"
    elif [[ "$FRAMEWORK" == "angular" ]]; then
        pm2 serve dist/$PROJECT_NAME $PORT --spa --name "$PROJECT_NAME"
    fi

    pm2 save
    pm2 startup
}

# Configure firewall and Nginx
setup_nginx() {
    log "Configuring firewall and Nginx..."
    sudo firewall-cmd --permanent --add-port=$PORT/tcp
    sudo firewall-cmd --reload

    cat <<EOL | sudo tee /etc/nginx/conf.d/$PROJECT_NAME.conf
server {
    listen 80;
    server_name _;
    location / {
        proxy_pass http://localhost:$PORT;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
    }
}
EOL

    sudo systemctl restart nginx
}

# Run all functions
install_dependencies
create_project
build_project
serve_project
setup_nginx

log "Deployment completed! Access your app at http://$(curl -s ifconfig.me)"

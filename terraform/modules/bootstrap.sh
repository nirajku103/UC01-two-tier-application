#!/bin/bash
# Update the system
apt update -y && apt upgrade -y

# Install Nginx
apt install -y nginx

# Start and enable Nginx
systemctl start nginx
systemctl enable nginx

# Create a simple web page
echo "<h1>Welcome to ASG Instance</h1>" > /var/www/html/index.html
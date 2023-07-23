#!/usr/bin/env bash

# Update package list and install Nginx
sudo apt-get update
sudo apt-get install -y nginx

# Create necessary directories and files with proper permissions
sudo mkdir -p /data/web_static/releases/test/
sudo mkdir -p /data/web_static/shared/
sudo touch /data/web_static/releases/test/index.html
sudo bash -c 'echo "Hello World again!" > /data/web_static/releases/test/index.html'

# Remove existing "current" directory if it exists
sudo rm -rf /data/web_static/current

# Create symbolic link to the test directory
sudo ln -s /data/web_static/releases/test /data/web_static/current

# Change ownership of the directories to the current user
sudo chown -R $USER:$USER /data/

# Configure Nginx to serve the web_static content
sudo sed -i '/^\tlocation \/ {/a \\\tlocation /hbnb_static/ {\n\t\talias /data/web_static/current/;\n\t}\n' /etc/nginx/sites-available/default

# Restart Nginx
sudo service nginx restart

#!/bin/bash

# Update the system
sudo apt update -y
sudo apt upgrade -y

# Install Shadowsocks-libev
sudo apt install -y shadowsocks-libev

# Configure Shadowsocks
sudo bash -c 'cat > /etc/shadowsocks-libev/config.json <<EOF
{
    "server": "0.0.0.0",
    "server_port": 8388,
    "password": "Shadow@2525",
    "method": "aes-256-gcm",
    "timeout": 300,
    "fast_open": true
}
EOF'

# Restart the Shadowsocks service to apply configuration
sudo systemctl restart shadowsocks-libev

# Enable Shadowsocks to start on boot
sudo systemctl enable shadowsocks-libev

# Show status
sudo systemctl status shadowsocks-libev

# Display success message
echo "Shadowsocks installation and configuration completed successfully!"
echo "Your Shadowsocks server is running on port 8388 with the password 'Shadow@2525'."

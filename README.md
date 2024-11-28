# Shadowsocks Auto-Install Script

This repository contains a simple script to automatically install and configure Shadowsocks on a new Ubuntu server. The script sets up Shadowsocks with the following default configuration:

- **Port:** 8388
- **Password:** `Shadow@2525`
- **Encryption Method:** `aes-256-gcm`

---

## Features
- Fully automated installation and configuration.
- Shadowsocks starts on system boot.
- Default configuration can be easily customized.

---

## How to Use

### **Step 1: Fetch the Script**

SSH into your server and fetch the script using `curl` or `wget`:

#### Option 1: Using `curl`
```bash
curl -O https://raw.githubusercontent.com/<your-username>/<your-repo>/main/install_shadowsocks.sh
```

#### Option 2: Using `wget`
```bash
wget https://raw.githubusercontent.com/<your-username>/<your-repo>/main/install_shadowsocks.sh
```

### **Step 2: Run the Script**

1. Make the script executable:
   ```bash
   chmod +x install_shadowsocks.sh
   ```

2. Run the script:
   ```bash
   sudo ./install_shadowsocks.sh
   ```

---

## Default Configuration
The script sets up Shadowsocks with the following configuration:

- **Server Address:** `0.0.0.0`
- **Server Port:** `8388`
- **Password:** `Shadow@2525`
- **Encryption Method:** `aes-256-gcm`
- **Timeout:** 300 seconds
- **Fast Open:** Enabled

If you wish to modify these settings, edit the script before running it or update the `/etc/shadowsocks-libev/config.json` file after installation.

---

## Verify Installation

To check that Shadowsocks is running:
```bash
sudo systemctl status shadowsocks-libev
```

---

## Connecting to the Server

Use any Shadowsocks client to connect to your server. Configure the client with the following details:

- **Server Address:** Your server's public IP
- **Server Port:** 8388
- **Password:** Shadow@2525
- **Encryption Method:** aes-256-gcm

---

## License
This project is licensed under the MIT License. Feel free to use and modify it as needed.

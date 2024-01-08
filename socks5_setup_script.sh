
#!/bin/bash

# Update the system
yum update -y

# Install necessary tools
yum install -y wget

# Download and run the setup script for Socks5
wget https://example.com/setup-socks5.sh
chmod +x setup-socks5.sh
./setup-socks5.sh

# Set custom configurations here
# Replace 'your_port', 'your_username', and 'your_password' with your desired settings
echo "Port your_port" >> /etc/socks5.conf
echo "Username your_username" >> /etc/socks5.conf
echo "Password your_password" >> /etc/socks5.conf

# Open the custom port in the firewall
firewall-cmd --permanent --zone=public --add-port=your_port/tcp
firewall-cmd --reload

echo "Socks5 proxy setup complete."

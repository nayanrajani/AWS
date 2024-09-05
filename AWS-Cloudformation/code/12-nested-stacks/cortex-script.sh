#!/bin/bash
 
# Define URLs and paths
RPM_URL="https://cortex-agent-install.s3.ap-south-1.amazonaws.com/cortex-8.4.1.125963.rpm"
CONF_URL="https://cortex-agent-install.s3.ap-south-1.amazonaws.com/cortex.conf"
CONF_DIR="/etc/panw"
CONF_FILE="$CONF_DIR/cortex.conf"
RPM_FILE="cortex-8.4.1.125963.rpm"
 
# Create directory for configuration file if it doesn't exist
echo "Creating directory $CONF_DIR if it does not exist..."
sudo mkdir -p "$CONF_DIR"
 
# Download the RPM package
echo "Downloading RPM file..."
wget --no-check-certificate --no-proxy "$RPM_URL" -O "$RPM_FILE"
if [ $? -ne 0 ]; then
    echo "Error downloading RPM file."
    exit 1
fi
 
# Download the configuration file
echo "Downloading configuration file..."
wget --no-check-certificate --no-proxy "$CONF_URL" -O "$CONF_FILE"
if [ $? -ne 0 ]; then
    echo "Error downloading configuration file."
    exit 1
fi
 
# Check if the configuration file was successfully downloaded
if [ ! -f "$CONF_FILE" ]; then
    echo "Configuration file not found at $CONF_FILE"
    exit 1
fi
 
# Set permissions for the configuration file
echo "Setting permissions for $CONF_FILE..."
sudo chmod 777 "$CONF_FILE"
if [ $? -ne 0 ]; then
    echo "Error setting permissions for $CONF_FILE."
    exit 1
fi
sudo chmod 744 "$CONF_FILE"
if [ $? -ne 0 ]; then
    echo "Error setting permissions for $CONF_FILE."
    exit 1
fi
 
# Install the RPM package
echo "Installing RPM package..."
sudo yum install ./"$RPM_FILE" -y
if [ $? -ne 0 ]; then
    echo "Error installing RPM package."
    exit 1
fi
 
# Verify the installation
echo "Verifying the installation..."
rpm -qa | grep cortex-agent
if [ $? -ne 0 ]; then
    echo "Cortex agent installation verification failed."
    exit 1
fi
 
echo "Installation and configuration completed successfully."
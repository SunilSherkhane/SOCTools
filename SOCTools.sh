#!/bin/bash

# Update the system
sudo apt update

# Install required dependencies
sudo apt install -y build-essential libpcap-dev libssl-dev libnet1-dev libpcre3-dev libgtk-3-dev libncurses-dev flex bison cmake

# Install Etherape
sudo apt install -y etherape

# Install Ettercap
sudo apt install -y ettercap-text-only

# Install Medusa
sudo apt install -y medusa

# Install Nmap
sudo apt install -y nmap

# Install Scap-workbench
sudo apt install -y scap-workbench

# Install Skipfish
sudo apt install -y skipfish

# Install Sqlninja
sudo apt install -y sqlninja

# Install Wireshark
sudo apt install -y wireshark

# Add user to Wireshark group for capturing packets without root
sudo usermod -aG wireshark "$USER"

# Install Yersinia
sudo apt install -y yersinia

# Note: Yersinia requires root privileges, so you may need to run it with sudo.

# Install Suricata (Intrusion Detection/Prevention System)
sudo apt install -y suricata

# Install OSSEC (Host-based Intrusion Detection System)
sudo apt install -y ossec-hids

# Install Snort (Network Intrusion Detection System)
sudo apt install -y snort

# Install Bro (Network Security Monitor)
sudo apt install -y bro

# Install Zeek (Network Security Monitor)
sudo apt install -y zeek

# Install Elasticsearch (Search and analytics engine)
sudo apt install -y elasticsearch

# Install Logstash (Data processing pipeline)
sudo apt install -y logstash

# Install Kibana (Data visualization)
sudo apt install -y kibana

# Install Wazuh (Host and endpoint security)
wget -qO - https://packages.wazuh.com/key/GPG-KEY-WAZUH | sudo apt-key add -
echo "deb https://packages.wazuh.com/4.x/apt/ stable main" | sudo tee /etc/apt/sources.list.d/wazuh.list
sudo apt update
sudo apt install -y wazuh-manager

# Start necessary services
sudo systemctl enable suricata
sudo systemctl start suricata
sudo systemctl enable ossec
sudo systemctl start ossec
sudo systemctl enable snort
sudo systemctl start snort
sudo systemctl enable bro
sudo systemctl start bro
sudo systemctl enable zeek
sudo systemctl start zeek
sudo systemctl enable elasticsearch
sudo systemctl start elasticsearch
sudo systemctl enable logstash
sudo systemctl start logstash
sudo systemctl enable kibana
sudo systemctl start kibana
sudo systemctl enable wazuh-manager
sudo systemctl start wazuh-manager

# Print installation complete message
echo "SOC tool installation completed!"

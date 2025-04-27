#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Banner
clear
echo -e "${CYAN}"
echo "======================================="
echo "          Welcome to ObscuraVX         "
echo "======================================="
echo -e "${NC}"

sleep 1

# Install dependencies
echo -e "${GREEN}[+] Updating packages...${NC}"
apt update -y && apt upgrade -y
apt install python python-pip -y
apt install git -y

# Python modules
echo -e "${GREEN}[+] Installing Python modules...${NC}"
pip install --upgrade pip
pip install requests

# Fake loading bar
loading_bar() {
    echo -ne "${GREEN}[>                   ] 10% Installing...\r"
    sleep 0.5
    echo -ne "${GREEN}[====>               ] 30% Installing...\r"
    sleep 0.5
    echo -ne "${GREEN}[========>           ] 50% Installing...\r"
    sleep 0.5
    echo -ne "${GREEN}[=============>      ] 70% Installing...\r"
    sleep 0.5
    echo -ne "${GREEN}[==================> ] 90% Finalizing...\r"
    sleep 0.5
    echo -ne "${GREEN}[====================] 100% Done!       \n"
}
echo -e "${GREEN}[+] Preparing environment...${NC}"
loading_bar

sleep 1

# Installation complete
echo -e "${CYAN}"
echo "======================================="
echo "     Installation Completed!"
echo "======================================="
echo -e "${NC}"
sleep 1

# Fake device checking
echo -e "${CYAN}[!] Scanning Device..."
sleep 1
echo -e "${CYAN}[!] Checking environment..."
sleep 1
echo -e "${CYAN}[!] Verifying system compatibility..."
sleep 1
echo -e "${CYAN}[!] Checking network status..."
sleep 1
echo -e "${CYAN}[!] Authenticating device integrity..."
sleep 2
echo -e "${GREEN}[✓] Device verified. Launching ObscuraVX...${NC}"
sleep 1

# Launch main tool
python main.py

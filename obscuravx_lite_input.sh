
#!/bin/bash

# ObscuraVX Sim Hack Tool - Lite Version with Target Input
# By Malik Alizy

clear
echo -e "\e[1;35m"
echo "███████╗ ██████╗███████╗ ██████╗██╗   ██╗██████╗  █████╗ ██╗   ██╗"
echo "██╔════╝██╔════╝██╔════╝██╔════╝██║   ██║██╔══██╗██╔══██╗██║   ██║"
echo "███████╗██║     █████╗  ██║     ██║   ██║██████╔╝███████║██║   ██║"
echo "╚════██║██║     ██╔══╝  ██║     ██║   ██║██╔═══╝ ██╔══██║██║   ██║"
echo "███████║╚██████╗███████╗╚██████╗╚██████╔╝██║     ██║  ██║╚██████╔╝"
echo "╚══════╝ ╚═════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝  ╚═╝ ╚═════╝ "
echo -e "\e[0m"
sleep 1

menu() {
  echo -e "\e[1;32m"
  echo "[1] Instagram Account Hack"
  echo "[2] Wi-Fi Password Cracker"
  echo "[3] Location Tracker"
  echo "[4] Social Media OSINT Scan"
  echo "[5] Device Access Terminal"
  echo "[0] Exit"
  echo -e "\e[0m"
  read -p "Choose an option: " choice

  case $choice in
    1) read -p "Enter target username: " target; instagram_sim "$target" ;;
    2) read -p "Enter Wi-Fi network name: " target; wifi_sim "$target" ;;
    3) read -p "Enter phone number/email: " target; location_sim "$target" ;;
    4) read -p "Enter social media profile URL: " target; osint_sim "$target" ;;
    5) read -p "Enter target device ID or IP: " target; device_sim "$target" ;;
    0) exit ;;
    *) echo "Invalid choice." ; sleep 1 ; menu ;;
  esac
}

lock_message() {
  echo -e "\e[1;31m"
  echo "------------------------------------------------------"
  echo "  RESULT LOCKED. Contact +49 15510 441895 to unlock"
  echo "  ObscuraVX: Black Hat Edition - Premium Access Only"
  echo "------------------------------------------------------"
  echo -e "\e[0m"
}

instagram_sim() {
  echo "[*] Connecting to Instagram servers for target: $1"
  sleep 2
  echo "[*] Bypassing two-factor authentication..."
  sleep 2
  echo "[*] Extracting username and password hash..."
  sleep 2
  echo "[*] Cracking password using brute force..."
  sleep 2
  echo "[*] Accessing account data..."
  sleep 2
  lock_message
  read -p "Press Enter to return to menu..." ; menu
}

wifi_sim() {
  echo "[*] Scanning network: $1"
  sleep 2
  echo "[*] Starting WPA2 handshake capture..."
  sleep 2
  echo "[*] Brute forcing password..."
  sleep 3
  echo "[*] Password cracked: ************"
  sleep 1
  lock_message
  read -p "Press Enter to return to menu..." ; menu
}

location_sim() {
  echo "[*] Tracking target: $1"
  sleep 2
  echo "[*] Fetching IP logs..."
  sleep 2
  echo "[*] Extracting coordinates..."
  sleep 2
  echo "[*] Target located near: Berlin, Germany"
  sleep 1
  lock_message
  read -p "Press Enter to return to menu..." ; menu
}

osint_sim() {
  echo "[*] Analyzing social media profile: $1"
  sleep 2
  echo "[*] Scraping posts and metadata..."
  sleep 2
  echo "[*] Detecting online patterns and last seen info..."
  sleep 2
  echo "[*] Accessing connected accounts..."
  sleep 1
  lock_message
  read -p "Press Enter to return to menu..." ; menu
}

device_sim() {
  echo "[*] Establishing reverse shell to: $1"
  sleep 2
  echo "[*] Accessing file system..."
  sleep 2
  echo "[*] Downloading contacts and messages..."
  sleep 2
  echo "[*] Monitoring real-time camera feed..."
  sleep 2
  lock_message
  read -p "Press Enter to return to menu..." ; menu
}

menu

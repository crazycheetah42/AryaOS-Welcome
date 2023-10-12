#!/bin/bash

chrome() {
    echo "Installing Google Chrome"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install ./google-chrome-stable_current_amd64.deb -y
    rm google-chrome-stable_current_amd64.deb
    echo "Installed Google Chrome"
}

edge() {
    echo "Installing Microsoft Edge"
    wget https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-dev/microsoft-edge-dev_117.0.2024.1-1_amd64.deb
    sudo apt install ./microsoft-edge-dev_117.0.2024.1-1_amd64.deb -y
    rm microsoft-edge-dev_117.0.2024.1-1_amd64.deb
    echo "Installed Microsoft Edge"
}

brave() {
    sudo apt install apt-transport-https curl -y
    curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
    echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt update
    sudo apt install brave-browser -y
}

firefox() {
    echo "Firefox is already installed!"
    echo "Firefox should already be installed! Check the start menu. If not, run sudo apt install firefox -y"
}

main() {
    echo "Welcome to Gen OS!"
    echo "Click on the options below to set up your new OS:"
    echo "1. Install Google Chrome"
    echo "2. Install Microsoft Edge"
    echo "3. Install Brave Browser"
    echo "4. Check Firefox Installation"
    echo "5. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1) chrome ;;
        2) edge ;;
        3) brave ;;
        4) firefox ;;
        5) exit ;;
        *) echo "Invalid choice";;
    esac
}

main

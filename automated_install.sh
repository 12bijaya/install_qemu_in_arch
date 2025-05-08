#!/bin/bash

# Function to execute after ensuring Git is installed
main_function() {
    echo "Git is installed. Proceeding with the main function..."
    git clone https://github.com/12bijaya/install_qemu_in_arch.git
    chmod u+x install_qemu_in_arch/install.sh
    install_qemu_in_arch/install.sh
}

if ! command -v git &>/dev/null; then
    echo "Git is not installed. Installing..."
    sudo pacman -Sy --noconfirm git
    if [ $? -ne 0 ]; then
        echo "Failed to install Git. Exiting."
        exit 1
    fi
else
    echo "Git is already installed."
fi

main_function


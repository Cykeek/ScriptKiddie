#!/bin/bash

echo "Connect SSH Server!!"
echo
echo "Made by Cykeek"
echo
echo -e "\e[38;2;0;255;0mExecuting in 3!\e[0m"
sleep 1s
echo
echo -e "\e[38;2;0;255;0mExecuting in 2!\e[0m"
sleep 1s
echo
echo -e "\e[38;2;0;255;0mExecuting in 1!\e[0m"
sleep 1s


# Function to check if an IP address is valid
is_valid_ip() {
    local ip="$1"
    if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        return 0
    else
        return 1
    fi
}

# Function to read authentication information from authentication.txt
read_authentication_info() {
    if [ -f "authentication.txt" ]; then
        auth_info=$(cat authentication.txt)
        IFS=":" read -r username password server_ip <<< "$auth_info"
    else
        echo "Authentication file not found."
    fi
}

# Function to get OS information from the remote server
get_os_info() {
    os_info=$(sshpass -p "$password" ssh "$username@$server_ip" 'cat /etc/os-release')
    if [ -n "$os_info" ]; then
        echo -e "\e[38;2;255;0;0mOS Information for $server_ip:\e[0m"
        echo -e "\e[38;2;0;255;0m$os_info\e[0m"
    else
        echo "OS information not available."
    fi
}

# Input from the user or from authentication.txt
read_authentication_info

# If the authentication file is not found or incomplete, ask the user for credentials
if [ -z "$username" ] || [ -z "$password" ] || [ -z "$server_ip" ]; then
    read -p "Enter SSH username: " username
    read -p "Enter SSH password: " -s password
    echo # Newline after password input
    read -p "Enter SSH server IP address: " server_ip
    echo "$username:$password:$server_ip" > authentication.txt
fi

# Check if the IP address is valid
if ! is_valid_ip "$server_ip"; then
    echo "Invalid IP address. Please enter a valid IP address."
    exit 1
fi

# Get OS information
get_os_info

# Wait for 2 seconds
sleep 2

# Create SSH key if it doesn't exist
if [ ! -f "$HOME/.ssh/id_rsa" ]; then
    ssh-keygen -t rsa -N "" -f "$HOME/.ssh/id_rsa"
fi

# Copy the public key to the remote server
ssh-copy-id "$username@$server_ip" &> /dev/null

# Connect to the server using SSH key-based authentication
ssh "$username@$server_ip"

# Check the exit status of SSH
if [ $? -eq 0 ]; then
    echo "Connected successfully."
else
    echo "Failed to connect."
fi

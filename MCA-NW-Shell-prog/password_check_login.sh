#!/bin/bash

check_login() {
    local username=$1
    local password=$2

    # Define valid username and password
    local valid_username="myuser"
    local valid_password="mypass"

    if [ "$username" == "$valid_username" ] && [ "$password" == "$valid_password" ]; then
        echo "Login successful!"
    else
        echo "Invalid username or password. Login failed."
    fi
}


echo "Enter your username:"
read input_username


echo "Enter your password:"
read -s input_password

echo

check_login "$input_username" "$input_password"


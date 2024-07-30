#!/bin/bash

# Generate random username and password
USERNAME="gitpoduser"
PASSWORD=$(openssl rand -base64 12)

# Add the user with the random password
sudo useradd -m -s /bin/bash $USERNAME
echo "$USERNAME:$PASSWORD" | sudo chpasswd

# Print the details
echo "Username: $USERNAME"
echo "Password: $PASSWORD"

#!/bin/bash

# Steganography using Steghide

echo "Welcome to Steghide - Image Steganography Tool"
echo "----------------------------------------------"

# Prompt for user input: image file, secret file, passphrase
read -p "Enter the name of the image file (with extension): " image_file
read -p "Enter the name of the secret file (with extension): " secret_file
read -p "Enter a passphrase: " passphrase

# Embedding the secret file into the image
echo "Embedding the secret file into the image..."
steghide embed -cf "$image_file" -ef "$secret_file" -p "$passphrase"

if [ $? -eq 0 ]; then
    echo "Secret file embedded successfully!"
else
    echo "Error embedding the secret file."
    exit 1
fi

echo "Process completed."

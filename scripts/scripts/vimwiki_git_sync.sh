#!/bin/bash
# Script that auto pushes changes to the vimwiki directory
# Define the directory
VIMWIKI_DIR="$HOME/vimwiki"

# Change to the Vimwiki directory
cd "$VIMWIKI_DIR" || { echo "Directory not found: $VIMWIKI_DIR"; exit 1; }

# Get the current date
CURRENT_DATE=$(date +"%Y-%m-%d %H:%M:%S")

# Add all files to git
git add .

# Commit with the current date as the message
git commit -m "$CURRENT_DATE"

# Push to the remote repository
git push

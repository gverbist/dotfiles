#!/bin/bash

# Define the bookmarks file
BOOKMARKS_FILE="$HOME/lnks/bookmarks.txt"

# Ensure the bookmarks directory exists
#mkdir -p "$(dirname "$BOOKMARKS_FILE")"
#wl-copy --primary
ydotool key 29:1 46:1 46:0 29:0

sleep 0.2
# Get clipboard content
TEXT=$(wl-paste)

# Check if clipboard is empty
if [ -z "$TEXT" ]; then
    echo "Clipboard is empty. Copy something first!"
    exit 1
fi

# Append to bookmarks file with a timestamp
echo "$TEXT" >> "$BOOKMARKS_FILE"

# Provide feedback
notify-send "Bookmark Saved" "$TEXT"
echo "Added to bookmarks: $TEXT"


#!/bin/zsh

# Path to swww executable
SWWW_EXECUTABLE="/usr/bin/swww"

# Path to your wallpaper directory
WALLPAPER_DIR="/home/meisaki/wallpapers"

# Initialize swww daemon (this also checks if it's already running)
"$SWWW_EXECUTABLE" init

# Allow some time for the daemon to start
sleep 1  # Increase the sleep time if needed

# Path to the state file
STATE_FILE="$HOME/.cache/swww/wallpaper_state.txt"

# Read the last used wallpaper index from the state file or set it to 0 if the file doesn't exist
if [[ -e "$STATE_FILE" ]]; then
    CURRENT_INDEX=$(cat "$STATE_FILE")
else
    CURRENT_INDEX=0
fi

# List of wallpaper files in the directory
WALLPAPERS=("$WALLPAPER_DIR"/*)

# Loop to set wallpapers sequentially every 10 seconds
while true; do
    # Set the current wallpaper using swww
    "$SWWW_EXECUTABLE" img "${WALLPAPERS[$CURRENT_INDEX]}"
    
    # Increment the index for the next iteration
    CURRENT_INDEX=$(( (CURRENT_INDEX + 1) % ${#WALLPAPERS[@]} ))

    # Save the current index to the state file
    echo "$CURRENT_INDEX" > "$STATE_FILE"

    # Wait for 10 seconds before changing to the next wallpaper
    sleep 30  # 10 seconds
done

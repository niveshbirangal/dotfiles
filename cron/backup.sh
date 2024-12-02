#!/bin/bash
echo "--------------------"
/bin/date "+%Y-%m-%d %H:%M:%S"
echo "-----dropbox backup-----"
rsync -av --delete ~/Desktop/neo ~/Dropbox
echo "-----end dropbox backup-----"
echo ""
echo "-----local backup-----"
rsync -a --delete ~/Desktop/neo /Volumes/neo-nas/backups/
echo "-----end local backup-----"
echo ""

# TODO: Implement lookup on change
#
# # Path to store the timestamp
# LAST_RUN_FILE="/path/to/last_run_timestamp.txt"
#
# # Path to your source and destination directories
# SOURCE_DIR="/path/to/source"
# DEST_DIR="/path/to/destination"
#
# # Check if 6 hours have passed since the last run
# if [[ -f "$LAST_RUN_FILE" ]]; then
#     LAST_RUN_TIME=$(cat "$LAST_RUN_FILE")
# else
#     LAST_RUN_TIME=0
# fi
#
# CURRENT_TIME=$(date +%s)
#
# # Time difference in seconds (6 hours = 6 * 60 * 60)
# TIME_DIFF=$((CURRENT_TIME - LAST_RUN_TIME))
#
# if [[ $TIME_DIFF -ge 21600 ]]; then  # 21600 seconds = 6 hours
#     # Run a dry-run of rsync to check for changes
#     if rsync -n -a --delete "$SOURCE_DIR/" "$DEST_DIR/" | grep -q "sending file list"; then
#         # If rsync shows changes, perform the actual sync
#         rsync -a --delete "$SOURCE_DIR/" "$DEST_DIR/"
#         
#         # Update the timestamp
#         echo "$CURRENT_TIME" > "$LAST_RUN_FILE"
#     else
#         echo "No changes detected. Skipping rsync."
#     fi
# else
#     echo "It's been less than 6 hours since the last run. Skipping rsync."
# fi

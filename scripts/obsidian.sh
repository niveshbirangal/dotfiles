#!/bin/bash

SOURCE="$HOME/Desktop/neo"
BACKUP_ROOT="/Volumes/main/05_Backups/obsidian"
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H-%M-%S")

DEST="$BACKUP_ROOT/$DATE"
LOG_DIR="$BACKUP_ROOT/logs"
LOG="$LOG_DIR/backup-$DATE-$TIME.log"

if [ ! -d "/Volumes/main" ]; then
    echo "NAS is not mounted. Backup cancelled."
    exit 1
fi

if [ ! -d "$SOURCE" ]; then
    echo "Source folder not found: $SOURCE"
    exit 1
fi

mkdir -p "$DEST"
mkdir -p "$LOG_DIR"

echo "========================================" | tee "$LOG"
echo "Backup started: $(date)" | tee -a "$LOG"
echo "Source: $SOURCE" | tee -a "$LOG"
echo "Destination: $DEST/neo/" | tee -a "$LOG"
echo "========================================" | tee -a "$LOG"

rsync -av "$SOURCE/" "$DEST/neo/" 2>&1 | tee -a "$LOG"

STATUS=${PIPESTATUS[0]}

echo "========================================" | tee -a "$LOG"

if [ $STATUS -eq 0 ]; then
    echo "Backup completed successfully: $(date)" | tee -a "$LOG"
else
    echo "Backup FAILED with exit code $STATUS: $(date)" | tee -a "$LOG"
fi

echo "Log: $LOG" | tee -a "$LOG"

exit $STATUS

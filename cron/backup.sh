#!/bin/bash
echo "--------------------"
/bin/date "+%Y-%m-%d %H:%M:%S"
echo "-----dropbox backup-----"
rsync -av --delete ~/Desktop/neo ~/Dropbox
echo "-----end dropbox backup-----"
echo ""
echo "-----local backup-----"
rsync -av --delete ~/Desktop/neo /Volumes/neo-nas/backups/
echo "-----end local backup-----"
echo ""



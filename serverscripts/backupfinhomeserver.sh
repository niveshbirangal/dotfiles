#!/bin/bash

DATE=$(date +"%Y-%m-%d")
sudo docker exec maybe-db-1 pg_dump -U maybe_user -d maybe_production -F c -f /var/lib/postgresql/data/backuphomeserver.dump
sudo docker cp maybe-db-1:/var/lib/postgresql/data/backuphomeserver.dump ~/backups/fin/homeserver/
mv /home/niveshbirangal/backups/fin/homeserver/backuphomeserver.dump ~/backups/fin/homeserver/backuphomeserver_${DATE}.dump
rclone sync /home/niveshbirangal/backups/fin dropbox:/fin

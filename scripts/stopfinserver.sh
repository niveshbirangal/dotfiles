#!/bin/bash

pkill -f "cloudflared tunnel run mydockerapp"

DOCKER_DIR="/home/niveshbirangal/docker-apps/maybe/"
cd "$DOCKER_DIR" || { echo "Directory not found: $DOCKER_DIR"; exit 1; }
sudo docker compose down

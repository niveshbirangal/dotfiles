#!/bin/bash

DOCKER_DIR="/home/niveshbirangal/docker-apps/maybe/"
cd "$DOCKER_DIR" || { echo "Directory not found: $DOCKER_DIR"; exit 1; }
sudo docker compose up -d

# cloudflared tunnel run mydockerapp &
nohup cloudflared tunnel run mydockerapp > cloudflared.log 2>&1 &


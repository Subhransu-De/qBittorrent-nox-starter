#!/bin/sh

set -eu

echo "┏┓      •       "
echo "┗┓╋┏┓┏┓╋┓┏┓┏┓   "
echo "┗┛┗┗┻┛ ┗┗┛┗┗┫•••"
echo "            ┛   "

echo "Starting qBittorrent-nox with Docker Compose..."
if [ ! -f ./config/server.key ] || [ ! -f ./config/server.crt ]; then
    echo "Generating SSL certificate..."
    openssl req -newkey rsa:2048 -nodes -keyout ./config/server.key -x509 -days 365 -out ./config/server.crt -config openssl.conf
    echo "SSL certificate generated successfully."
else
    echo "Using the existing SSL certificate."
fi

echo "Starting Docker Compose..."
docker compose up

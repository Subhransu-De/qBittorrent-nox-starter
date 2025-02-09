echo "┏┓      •       ";
echo "┗┓╋┏┓┏┓╋┓┏┓┏┓   ";
echo "┗┛┗┗┻┛ ┗┗┛┗┗┫•••";
echo "            ┛   ";

echo "Starting qBittorrent-nox with Docker Compose..."
echo "Generating SSL certificate..."

openssl req -newkey rsa:2048 -nodes -keyout ./config/server.key -x509 -days 365 -out ./config/server.crt -config openssl.conf

if [ $? -eq 0 ]; then
    echo "SSL certificate generated successfully."
    echo "Starting Docker Compose..."
    docker compose --env-file .env up
else
    echo "SSL certificate generation failed."
    exit 1
fi
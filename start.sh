echo "┏┓      •       ";
echo "┗┓╋┏┓┏┓╋┓┏┓┏┓   ";
echo "┗┛┗┗┻┛ ┗┗┛┗┗┫•••";
echo "            ┛   ";

openssl req -newkey rsa:2048 -nodes -keyout ./config/server.key -x509 -days 365 -out ./config/server.crt -config openssl.conf && docker compose --env-file .env up
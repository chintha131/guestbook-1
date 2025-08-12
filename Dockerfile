# Use the official Nginx image from Docker Hub.
# It's a lightweight and high-performance web server.
FROM nginx:alpine

# Copy your static HTML file to the Nginx web root directory.
# This is where Nginx looks for files to serve.
COPY index.html /usr/share/nginx/html/

# Expose port 80 for the web server (Nginx's default port).
# Cloud Run will automatically map its PORT environment variable to this.
EXPOSE 80

# The base Nginx image already has a command to start the server,
# so we don't need to specify one.
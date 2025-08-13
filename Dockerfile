# Best Practice: Use a specific version tag for reproducibility.
FROM nginx:1.25.3-alpine

# Best Practice: Run as a non-root user for security.
# Create a user and group.
RUN addgroup -S appgroup && adduser -S -G appgroup appuser

# Switch to the non-root user.
USER appuser

# Copy your static HTML file to the Nginx web root directory.
# This is where Nginx looks for files to serve.
COPY index.html /usr/share/nginx/html/

# Expose port 80 for the web server (Nginx's default port).
# Cloud Run will automatically map its internal PORT environment variable to this.
EXPOSE 80

# The base Nginx image already has a command to start the server,
# so we don't need to specify one.
# CMD ["nginx", "-g", "daemon off;"]
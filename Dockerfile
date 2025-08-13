# Use an official lightweight Nginx image as a parent image
FROM nginx:alpine

# Set the working directory to the Nginx web root
WORKDIR /usr/share/nginx/html

# Copy the local `index.html` and `main.js` files to the container's web root
COPY ./index.html .
COPY ./main.js .

# Inform Docker that the container listens on port 80 at runtime
EXPOSE 80
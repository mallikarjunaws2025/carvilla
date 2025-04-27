# Use the official Nginx image as base
FROM nginx:alpine

# Set working directory inside container
WORKDIR /usr/share/nginx/html

# Remove default nginx index page
RUN rm -rf ./*

# Copy custom index.html and assets into the container
COPY index.html .
COPY assets/ ./assets

# Expose port 80
EXPOSE 80

# Start Nginx server (handled by base image)
CMD ["nginx", "-g", "daemon off;"]


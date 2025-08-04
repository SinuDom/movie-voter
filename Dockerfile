# Use the official lightweight Nginx image
FROM nginx:alpine

# Copy your custom index.html into the default nginx public folder
COPY index.html /usr/share/nginx/html/index.html

# Set file permissions (optional; nginx drops privileges to 'nginx' by default)
RUN chown nginx:nginx /usr/share/nginx/html/index.html

# Expose port 80 (default for nginx)
EXPOSE 80
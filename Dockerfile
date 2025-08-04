# Use the official Nginx base image
FROM nginx:alpine

# Set environment variables
ENV NGINX_USER=nginx

# Copy your custom index.html into the appropriate directory
COPY index.html /usr/share/nginx/html/index.html

# Ensure the index.html file is owned by the nginx user
RUN chown $NGINX_USER:$NGINX_USER /usr/share/nginx/html/index.html

# Make sure Nginx runs as a non-root user
# This is the default for the official Nginx image (user 'nginx')
USER $NGINX_USER

# Expose port 80 and start Nginx (CMD is already set in base image)
EXPOSE 80
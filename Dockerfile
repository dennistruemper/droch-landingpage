FROM busybox:latest

# Create directory for web files
RUN mkdir -p /www

# Copy static files
COPY index.html /www/
COPY styles.css /www/

# Expose port 8080
EXPOSE 8080

# Use BusyBox httpd (very minimal static file server)
CMD ["httpd", "-f", "-v", "-p", "8080", "-h", "/www"]


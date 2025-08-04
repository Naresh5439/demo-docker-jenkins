# Use the official NGINX base image
FROM nginx:latest

# Remove default configuration (optional, if replacing it)
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom NGINX config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy website/app files to web root
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]

# Use the official production-ready Nginx image
FROM nginx:alpine

# Copy your built application files or static content into the Nginx html folder
COPY ./ /usr/share/nginx/html

# Expose port 80 to allow traffic to the container
EXPOSE 80

# Start Nginx in the foreground so the container stays running
CMD ["nginx", "-g", "daemon off;"]

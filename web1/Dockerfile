# Dockerfile for web1
FROM nginx:latest

# Copy the contents of the application to the container
COPY ./application /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

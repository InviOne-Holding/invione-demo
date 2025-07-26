# Use official Nginx image to serve static assets
FROM nginx:alpine

# Copy static site files to nginx html directory
COPY public/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]

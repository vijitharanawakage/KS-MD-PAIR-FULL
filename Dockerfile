# Use official Nginx image
FROM nginx:alpine

# Remove default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your site files to Nginx html folder
COPY . /usr/share/nginx/html

# Expose port 80 (Render will map to this)
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

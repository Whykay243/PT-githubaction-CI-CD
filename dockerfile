# Use official lightweight NGINX image
FROM nginx:alpine

# Remove default NGINX static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files into NGINX's public folder
COPY html/ /usr/share/nginx/html/
COPY styles/ /usr/share/nginx/html/styles/
COPY images/ /usr/share/nginx/html/images/
COPY pdf/ /usr/share/nginx/html/pdf/
COPY favicon.ico /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]

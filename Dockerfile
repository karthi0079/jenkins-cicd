# Use a lightweight Nginx image as the base
FROM nginx:alpine

# Copy our HTML application into Nginx's web directory
COPY app/index.html /usr/share/nginx/html/index.html

# Document the port used by the web server
EXPOSE 80

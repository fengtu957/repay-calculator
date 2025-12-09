# Stage-less Nginx image to serve the static site
FROM nginx:alpine

# Copy the static entrypoint
COPY index.html /usr/share/nginx/html/index.html

# Expose default http port
EXPOSE 80

# Use the base nginx start command
CMD ["nginx", "-g", "daemon off;"]


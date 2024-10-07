# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the built Angular app to the Nginx web root directory
COPY ./dist/my-angular-app /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
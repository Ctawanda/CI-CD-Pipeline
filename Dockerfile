FROM nginx:latest

RUN apt-get update && apt-get install -y

COPY . /usr/share/nginx/html

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom configuration to the container
COPY default.conf /etc/nginx/conf.d/

EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
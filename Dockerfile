FROM nginx:latest

RUN apt-get update && apt-get install -y

COPY . /usr/share/nginx/html
#COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
FROM nginx:latest

COPY . /usr/share/nginx/html
COPY default.conf.j2 /etc/nginx/conf.d/default.conf.j2
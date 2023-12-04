#!/bin/bash

# Function to replace placeholders with environment variables
replace_env() {
  env_var_name=$1
  placeholder=$2
  file_path=$3
  sed -i "s|${placeholder}|${!env_var_name}|g" "${file_path}"
}

# Copy custom Nginx configuration
cp /etc/nginx/conf.d/default.conf.template /etc/nginx/conf.d/default.conf

# Replace environment variables in the configuration file
replace_env "NGINX_PORT" "\$NGINX_PORT" "/etc/nginx/conf.d/default.conf"

# Start Nginx
nginx -g 'daemon off;'

# Offical Docker Image for Nginx
# https://hub.docker.com/_/nginx
FROM nginx

# Set Current Directory
WORKDIR /var/www/vhost/

# Vhost Config
COPY ./config/default.conf /etc/nginx/conf.d/default.conf
COPY ./config/admin.conf /etc/nginx/conf.d/vhost-admin.conf
COPY ./config/api.conf /etc/nginx/conf.d/vhost-api.conf

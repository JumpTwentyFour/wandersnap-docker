# Automated Nginx reverse proxy containers
# https://hub.docker.com/r/jwilder/nginx-proxy/
FROM jwilder/nginx-proxy

# Set Current Directory
RUN apt-get update && apt-get install -y curl

# Nginx config
COPY ./config/proxy_config.conf /etc/nginx/conf.d/proxy_config.conf
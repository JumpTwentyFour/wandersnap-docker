#!/bin/bash
ENV_FILE=.env

cd nginx-proxy
docker network create wandersnap_network || true
docker-compose up -d --build

cd ../admin
if [ ! -f "$ENV_FILE" ]; then
    echo "$FILE does not exist, now creating"
    cp .env.example .env
fi
docker-compose up -d --build

cd ../api
if [ ! -f "$ENV_FILE" ]; then
    echo "$FILE does not exist, now creating"
    cp .env.example .env
fi
docker-compose up -d --build
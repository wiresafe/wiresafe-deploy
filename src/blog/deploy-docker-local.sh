#!/usr/bin/env bash
docker network create wordpress-tier
docker volume create mariadb_data
docker volume create wordpress_data

docker run -d --name mariadb \
  -e ALLOW_EMPTY_PASSWORD=yes \
  -e MARIADB_USER=bn_wordpress \
  -e MARIADB_DATABASE=bitnami_wordpress \
  --net wordpress-tier \
  --volume mariadb_data:/bitnami \
  bitnami/mariadb:latest

docker run -d --name wordpress -p 80:80 -p 443:443 \
  -e ALLOW_EMPTY_PASSWORD=yes \
  -e WORDPRESS_DATABASE_USER=bn_wordpress \
  -e WORDPRESS_DATABASE_NAME=bitnami_wordpress \
  --net wordpress-tier \
  --volume wordpress_data:/bitnami \
  wiresafe/wordpress:latest
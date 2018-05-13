#!/usr/bin/env bash
docker rm -f wordpress
docker rm -f mariadb
docker volume prune
docker network prune
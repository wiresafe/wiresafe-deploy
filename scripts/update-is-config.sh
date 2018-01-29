#!/usr/bin/env bash

# update identity server config
# 1. encode SPRING_APPLICATION_JSON.json
cat ${1} | base64
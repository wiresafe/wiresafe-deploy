#!/usr/bin/env bash

USERNAME=daveduran
PASSWORD=1badcoffee
BIND_EMAIL=true
BIND_MSISDN=true

curl --request POST \
  --url https://matrix.org/_matrix/client/r0/register \
  --verbose \
  --header 'accept: */*' \
  --header 'accept-encoding: gzip, deflate, br' \
  --header 'accept-language: en-US,en;q=0.8' \
  --header 'cache-control: no-cache' \
  --header 'connection: keep-alive' \
  --header 'content-type: text/plain;charset=UTF-8' \
  --header 'origin: https://riot.im' \
  --header 'postman-token: 400010c8-00c6-2506-afb9-a4dbf28d9b9f' \
  --header 'pragma: no-cache' \
  --header 'referer: https://riot.im/app/' \
  --header 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36' \
  --data '{"auth":{"session":"xHCMopYllWokhyvFmvwSWsHN"},"username":"${USERNAME}","password":"${PASSWORD}","bind_email":${BIND_EMAIL},"bind_msisdn":${BIND_MSISDN},"x_show_msisdn":true}'
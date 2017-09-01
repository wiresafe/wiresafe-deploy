#!/usr/bin/env bash

SERVER=neo.wiresafe.com
EMAIL=dave@daveduran.com
CLIENT_SECRET=EfWfaQgLyKnvwrfipGSrdF09TNFIWvVh
NEXT_LINK="https://riot.im/app/#/register?client_secret=EfWfaQgLyKnvwrfipGSrdF09TNFIWvVh&hs_url=https%3A%2F%2Fmatrix.org&is_url=https%3A%2F%2Fmatrix.org&session_id=xHCMopYllWokhyvFmvwSWsHN"
ID_SERVER=matrix.org

curl --request POST \
  --url https://${SERVER}/_matrix/client/r0/register/email/requestToken \
  --verbose \
  --header 'accept: */*' \
  --header 'accept-encoding: gzip, deflate, br' \
  --header 'accept-language: en-US,en;q=0.8' \
  --header 'cache-control: no-cache' \
  --header 'connection: keep-alive' \
  --header 'content-type: text/plain;charset=UTF-8' \
  --header 'origin: https://riot.im' \
  --header 'postman-token: dae7aeb2-329f-b7d3-88e6-5632eb15e4f6' \
  --header 'pragma: no-cache' \
  --header 'referer: https://riot.im/app/' \
  --header 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36' \
  --data '{"email":"${EMAIL}","client_secret":"${CLIENT_SECRET}","send_attempt":1,"next_link":"${NEXT_LINK}","id_server":"${ID_SERVER}"}'


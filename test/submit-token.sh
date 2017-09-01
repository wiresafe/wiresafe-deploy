#!/usr/bin/env bash

##
# submit-token
# registers an msisdn token to identify a mobile user
##

DATA="${1:-sid=9495&client_secret=EfWfaQgLyKnvwrfipGSrdF09TNFIWvVh&token=930803}"
SERVER="${2:-matrix.org}"

curl --verbose --request POST \
  --url https://${SERVER}/_matrix/identity/api/v1/validate/msisdn/submitToken \
  --header 'accept: */*' \
  --header 'accept-encoding: gzip, deflate, br' \
  --header 'accept-language: en-US,en;q=0.8' \
  --header 'cache-control: no-cache' \
  --header 'connection: keep-alive' \
  --header 'content-type: application/x-www-form-urlencoded' \
  --header 'origin: https://riot.im' \
  --header 'pragma: no-cache' \
  --header 'referer: https://riot.im/app/' \
  --header 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36' \
  --data ${DATA}


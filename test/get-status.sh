#!/usr/bin/env bash

curl --request OPTIONS \
  --url 'https://matrix.org/_matrix/client/r0/presence/%40daveduran%3Amatrix.org/status?access_token=MDAxOGxvY2F0aW9uIG1hdHJpeC5vcmcKMDAxM2lkZW50aWZpZXIga2V5CjAwMTBjaWQgZ2VuID0gMQowMDI4Y2lkIHVzZXJfaWQgPSBAZGF2ZWR1cmFuOm1hdHJpeC5vcmcKMDAxNmNpZCB0eXBlID0gYWNjZXNzCjAwMjFjaWQgbm9uY2UgPSAucG5YQzlMN1ZfOnV-ZlMxCjAwMmZzaWduYXR1cmUgsInJMGCIJ0c32wLSkPlbXHP7FFX8wYh8eBWg2U1dtJwK' \
  --verbose \
  --header 'accept: */*' \
  --header 'accept-encoding: gzip, deflate, br' \
  --header 'accept-language: en-US,en;q=0.8' \
  --header 'access-control-request-method: PUT' \
  --header 'cache-control: no-cache' \
  --header 'connection: keep-alive' \
  --header 'origin: https://riot.im' \
  --header 'postman-token: 827d8424-35f0-5b5a-c62b-89095735a959' \
  --header 'pragma: no-cache' \
  --header 'referer: https://riot.im/app/' \
  --header 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36'


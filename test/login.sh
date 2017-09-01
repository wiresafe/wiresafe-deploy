#!/usr/bin/env bash


TYPE=m.login.password
PASSWORD=1badc0ffee
IDTYPE=m.id.user
IDUSER=wiresafe-dave
DEVICE="https://chat.wiresafe.com/ via Chrome on Mac OS"
{


  identifier:
  {
    type: m.id.user
    user: wiresafe-dave
  }
  initial_device_display_name: https://chat.wiresafe.com/ via Chrome on Mac OS
  user: wiresafe-dave
}


curl --request POST \
  --url https://matrix.org/_matrix/client/r0/login \
  --verbose \
  --header 'cache-control: no-cache' \
  --header 'content-type: application/json' \
  --data '{"identifier": { "type": "m.id.user", "user": "wiresafe-dave"},"initial_device_display_name": "https://chat.wiresafe.com/ via Chrome on Mac OS", "password": "1badc0ffee", "type": "m.login.password",    "user": "wiresafe-dave"}'
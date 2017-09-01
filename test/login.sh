#!/usr/bin/env bash

if [ -x /usr/local/bin/http ]; then
	 http https://neo.wiresafe.com/_matrix/client/r0/login < ./login.json
else
	echo "httpie is required - install it $ apt-get install httpie"
fi

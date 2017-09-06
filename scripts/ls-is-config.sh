#!/usr/bin/env bash

# list conf files from production
# update the pod info
source ${SCRIPT_ROOT}/config.sh

echo PRODUCTION:
kubectl exec -it ${IS_POD_NAME} -- ls -l ${IS_SERVER_CONFIG_PATH}
echo
echo --------------------------------------------------------
echo
echo LOCAL:
ls -l ${IS_LOCAL_CONFIG_PATH}

#!/usr/bin/env bash

# list conf files from production
# update the pod info
source ${SCRIPT_ROOT}/config.sh

echo PRODUCTION:
kubectl exec -it ${HS_POD_NAME} -- ls -l ${HS_SERVER_CONFIG_PATH}
echo
echo --------------------------------------------------------
echo
echo LOCAL:
ls -l ${HS_LOCAL_CONFIG_PATH}

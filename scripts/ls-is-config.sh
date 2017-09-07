#!/usr/bin/env bash

# list conf files from production
# update the pod info
source ${SCRIPT_ROOT}/config.sh

PROD=${IS_POD_NAME}:${IS_SERVER_CONFIG_PATH}
LOCAL=${IS_LOCAL_CONFIG_PATH}

echo PRODUCTION: ${PROD}
echo kubectl exec -it ${IS_POD_NAME} -- ls -l ${IS_SERVER_CONFIG_PATH}
kubectl exec -it ${IS_POD_NAME} -- ls -l ${IS_SERVER_CONFIG_PATH}/
echo
echo --------------------------------------------------------
echo
echo LOCAL: ${LOCAL}
ls -l ${LOCAL}

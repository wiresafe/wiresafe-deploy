#!/usr/bin/env bash

# update the pod info
source ${SCRIPT_ROOT}/config.sh

SOURCE=${HS_LOCAL_CONFIG_PATH}
DEST=${HS_POD_NAME}:${HS_SERVER_CONFIG_PATH}

echo source: ${SOURCE}
echo dest: ${DEST}
echo
for f in ${SOURCE[*]}
do
    echo kubectl cp ${SOURCE} ${DEST}
done

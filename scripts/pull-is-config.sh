#!/usr/bin/env bash
# gets config files from production and saves them in /_private

# update local config
source ${SCRIPT_ROOT}/config.sh

SOURCE=${IS_POD_NAME}:${IS_SERVER_CONFIG_PATH}
DEST=${IS_LOCAL_CONFIG_PATH}

echo  "downloading config files"
echo source: ${SOURCE}
echo dest: ${DEST}
echo
echo kubectl cp ${SOURCE} ${DEST}
kubectl cp ${SOURCE} ${DEST}
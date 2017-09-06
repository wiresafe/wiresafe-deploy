#!/usr/bin/env bash
# gets config files from production and saves them in /_private

# update the pod info
source ${SCRIPT_ROOT}/config.sh

SOURCE=${IS_LOCAL_CONFIG_PATH}
DEST=${IS_POD_NAME}:${IS_SERVER_CONFIG_PATH}

echo source: ${SOURCE}
echo dest: ${DEST}
echo
for f in ${SOURCE[*]}
do
    echo kubectl cp ${SOURCE} ${DEST}
done
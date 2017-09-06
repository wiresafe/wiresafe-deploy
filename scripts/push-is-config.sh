#!/usr/bin/env bash
# gets config files from production and saves them in /_private

# update local config
source ${SCRIPT_ROOT}/config.sh

IS_CONFIG_FILES=()

if [ ${1} ]; then IS_CONFIG_FILES=(${1}); fi

# make sure the destination folder exists
mkdir -p ${IS_LOCAL_CONFIG_PATH}

# download config files
echo  "pushing config files:  ${IS_POD_NAME}:${IS_SERVER_CONFIG_PATH} > ${IS_LOCAL_CONFIG_PATH}"
echo
for f in ${IS_CONFIG_FILES[*]}
do
    DEST_PATH=${IS_POD_NAME}:${IS_SERVER_CONFIG_PATH}/
    kubectl cp ${IS_LOCAL_CONFIG_PATH}/${f} ${DEST_PATH}/
    echo ${DEST_PATH}${f}
done
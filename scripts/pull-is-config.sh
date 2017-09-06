#!/usr/bin/env bash
# gets config files from production and saves them in /_private

# update local config
source ${SCRIPT_ROOT}/config.sh

IS_CONFIG_FILES=()

if [ ${1} ]; then IS_CONFIG_FILES=(${1}); fi


echo  "downloading config files:  ${IS_LOCAL_CONFIG_PATH} > ${IS_POD_NAME}:${IS_SERVER_CONFIG_PATH}"
echo
for f in ${IS_CONFIG_FILES[*]}
do
    kubectl exec ${IS_POD_NAME} -- cat ${IS_SERVER_CONFIG_PATH}/${f} > ${IS_LOCAL_CONFIG_PATH}/${f}
    echo ${f}
done
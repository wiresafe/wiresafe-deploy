#!/usr/bin/env bash
# gets config files from production and saves them in /_private

# update local config
source ${SCRIPT_ROOT}/config.sh

HS_CONFIG_FILES=(
    homeserver.yaml
    neo.wiresafe.com.log.config
    neo.wiresafe.com.signing.key
    neo.wiresafe.com.tls.crt
    neo.wiresafe.com.tls.dh
    neo.wiresafe.com.tls.key
    turnserver.conf
    )

if [ ${1} ]; then HS_CONFIG_FILES=(${1}); fi

# make sure the destination folder exists
mkdir -p ${HS_LOCAL_CONFIG_PATH}

# download config files
echo  "downloading config files:  ${HS_POD_NAME}:${HS_SERVER_CONFIG_PATH} > ${HS_LOCAL_CONFIG_PATH}"
echo
for f in ${HS_CONFIG_FILES[*]}
do
    kubectl exec ${HS_POD_NAME} -- cat ${HS_SERVER_CONFIG_PATH}/${f} > ${HS_LOCAL_CONFIG_PATH}/${f}
    echo ${f}
done

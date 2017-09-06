#!/usr/bin/env bash

export HS_SERVER_CONFIG_PATH=/var/lib/matrix/neo
export HS_LOCAL_CONFIG_PATH=${PROJECT_ROOT}/_private/var/lib/matrix/neo
export HS_POD_NAME=$(kubectl get po -n matrix -l app=matrix -o=custom-columns=':metadata.name')

export IS_SERVER_CONFIG_PATH=/etc/mxisd
export IS_LOCAL_CONFIG_PATH=${PROJECT_ROOT}/_private/etc/mxisd
export IS_POD_NAME=$(kubectl get po -n matrix -l app=matrix-identity -o=custom-columns=':metadata.name')

alias show-env=${SCRIPT_ROOT}/show-env.sh
alias pull-hs-config=${SCRIPT_ROOT}/pull-hs-config.sh
alias push-hs-config=${SCRIPT_ROOT}/push-hs-config.sh
alias ls-hs-config=${SCRIPT_ROOT}/ls-hs-config.sh

alias pull-is-config=${SCRIPT_ROOT}/pull-is-config.sh
alias push-is-config=${SCRIPT_ROOT}/push-is-config.sh
alias ls-is-config=${SCRIPT_ROOT}/ls-is-config.sh


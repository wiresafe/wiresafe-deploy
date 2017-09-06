#!/usr/bin/env bash

# get current homeserver pod name
POD=$(kubectl get po -n matrix -l app=matrix -o=custom-columns=":metadata.name")
# echo "the pod name is ${POD}"

# display current homeserver config (/data/homeserver.yaml)
kubectl exec ${POD} -- cat /data/homeserver.yaml
#!/usr/bin/env bash

# return the pod name of the current matrix homeserver
kubectl get po -n matrix -l app=matrix -o=custom-columns=":metadata.name"

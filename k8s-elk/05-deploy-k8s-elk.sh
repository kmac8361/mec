#!/bin/bash
# Author: Kurt McIntyre
# Kubernetes Deployment Kick-Starter
#

model=`juju list-models |awk '{print $1}'|grep k8s-elk`

if [[ ${model:0:7} == "k8s-elk" ]]; then
	juju switch k8s-elk
     	juju deploy k8s-elk.yaml
else
	juju add-model k8s-elk
	juju switch k8s-elk
     	juju deploy k8s-elk.yaml
fi

echo "Login to the juju-gui to see status or use juju status"
juju gui --no-browser --show-credentials

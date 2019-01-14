#!/bin/bash
# Author: Fatih E. NAR
# Kubernetes Deployment Kick-Starter
#

model=`juju list-models |awk '{print $1}'|grep k8s-min`

if [[ ${model:0:7} == "k8s-min" ]]; then
	juju switch k8s-min
     	juju deploy k8s-minimal.yaml
else
	juju add-model k8s-min
	juju switch k8s-min
     	juju deploy k8s-minimal.yaml
fi

echo "Login to the juju-gui to see status or use juju status"
juju gui --no-browser --show-credentials

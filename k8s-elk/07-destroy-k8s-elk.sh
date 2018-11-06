#!/bin/bash
# Author: Kurt McIntyre
# Destroy Kubernetes
#
set -ex
model=`juju list-models |awk '{print $1}'|grep k8s-elk`
if [[ ${model:0:7} == "k8s-elk" ]]; then
     echo "Model:k8s-elk Found -> Destroy in Progress!"
     juju destroy-model "k8s-elk" -y
else
     echo "Model:k8s-elk NOT Found!"
fi

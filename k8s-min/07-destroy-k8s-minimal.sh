#!/bin/bash
# Author: Fatih E. Nar (fenar)
# Destroy Kubernetes
#
set -ex
model=`juju list-models |awk '{print $1}'|grep k8s-min`
if [[ ${model:0:7} == "k8s-min" ]]; then
     echo "Model:k8s-min Found -> Destroy in Progress!"
     juju destroy-model "k8s-min" -y
else
     echo "Model:k8s-min NOT Found!"
fi

#!/bin/bash
#
# MEC POD IaaS Deployment Kick-Starter
# Author: Kurt McIntyre
#
model=`juju list-models |awk '{print $1}'|grep openstack-queens`

if [[ ${model:0:16} == "openstack-queens" ]]; then
	juju switch openstack-queens
     	juju deploy openstack-queens-telemetry.yaml
else
	juju add-model openstack-queens
	juju switch openstack-queens
     	juju deploy openstack-queens-telemetry.yaml
fi

echo "Login to the juju-gui to see status or use juju status"
juju gui --no-browser --show-credentials

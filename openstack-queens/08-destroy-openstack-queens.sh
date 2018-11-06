#!/bin/bash
# Author: Fatih E. Nar (fenar)
# Destroy Openstack Model + JUJUGVNFM Jump Host
#
set -ex
model=`juju list-models |awk '{print $1}'|grep openstack-queens`
obnum=`hostname | cut -c 10- -`

if [[ ${model:0:16} == "openstack-queens" ]]; then
     echo "Model:Openstack-queens Found -> Destroy in Progress!"
     juju destroy-model "openstack-queens" -y
else
     echo "Model:Openstack-queens NOT Found!"
fi

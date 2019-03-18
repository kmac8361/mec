#!/bin/bash
#Author: Fatih E. NAR
set -eaux
obnum=`hostname | cut -c 10- -`
time juju bootstrap --bootstrap-series=xenial --config bootstrap-timeout=1200 --to node00vm0ob${obnum}.maas --show-log llc${obnum}-maas  maas-llc${obnum}-controller
echo "..."
juju gui --no-browser --show-credentials

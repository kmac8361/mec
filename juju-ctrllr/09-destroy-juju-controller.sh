#!/bin/bash
#
# Fatih E. NAR (fenar)
set -eaux

obnum=`hostname | cut -c 10- -`

juju kill-controller maas-llc${obnum}-controller

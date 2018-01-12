#!/bin/bash

set -u

if [[ $# -ne 3 ]]; then
  echo "Usage: $0 <tmpl> <vmname> <vmip>"
  exit 1
fi

vmtmpl=$1
vmname=$2
vmip=$3

python ./deploy-vm-centos6.py \
  --conf ./deploy-vm.conf \
  --tmpl "$vmtmpl" \
  --name "$vmname" \
  --cpu 1 \
  --mem 2 \
  --sys 20 \
  --net virbr1/${vmip}/24 \
  --gw 172.18.28.1


#!/bin/bash

set -u

if [[ $# -ne 3 ]]; then
  echo "Usage: $0 <tmpl> <vmname> <vmip>"
  exit 1
fi

vmtmpl=$1
vmname=$2
vmip=$3

python ./deploy-vm-centos7.py \
  --conf ./deploy-vm.conf \
  --tmpl "$vmtmpl" \
  --name "$vmname" \
  --cpu 2 \
  --mem 4 \
  --tmpl centos-7.4-x64 \
  --net virbr1/${vmip}/24 \
  --gw 172.18.28.1


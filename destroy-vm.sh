#!/bin/bash

set -u

vmdeploypath=/opt/kvm-virt-repo/vmimages

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <vmname>"
  exit 1
fi

echo $1
vmname=$1

virsh list --all | grep -w " $vmname "
if [[ $? -eq 0 ]]; then
  virsh destroy $vmname
  virsh undefine $vmname
fi


if [[ -d "${vmdeploypath}/$vmname" ]]; then
  echo "Found vm directory, deleting it..."
  rm -rf "${vmdeploypath}/$vmname" 
fi


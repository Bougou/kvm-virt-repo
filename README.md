# kvm-virt-repo

## Quick Guide

```bash
python deploy-vm.py --conf deploy-vm.conf --name vm-centos6 --tmpl centos-6.8-x64 --net br0/192.168.1.100/24
python deploy-vm-centos7.py --conf deploy-vm.conf --name vm-centos7 --tmpl centos-7.2-x64 --net virbr1/172.18.28.226/24
```

## Deploy and manager KVM virtual machines.

    kvm-virt-repo
    |-- deploy-vm.conf            # configuration file used by deploy-vm.py
    |-- deploy-vm.py              # script used to create a vm
    |-- deploy-vm-ceph.py         # script used to create a vm in ceph environtment
    |-- keys                      # stores public key files
    |   `-- id_rsa.pub
    |-- logs                      # log files generated when creating vm would be put in this dir
    |-- README.md
    |-- requirements              # python library dependencies that are required by deploy-vm.py
    |-- scripts                   # some scripts to ease the steps of configure KVM host
    |   |-- ch-nat-network.sh     # changes default NAT network to subnet 192.168.0.0/24
    |   |-- disk-sum.sh
    |   |-- kvm-iptables.txt
    |   |-- mkbridge.sh           # creates bridge device
    |   |-- mkkvmhost.sh          # KVM installation script
    |   `-- net-default.xml
    |-- templates                 # directory used to store templates images
    |   |-- centos5.11_x64.raw.tar.gz
    |   |-- centos6.5_x86_64.raw
    |   `-- centos6.5_x86_64.raw.tar.gz
    `-- vmimages                  # directory used to store disk image file of the vm
        `-- vm1
            |-- vm1.xml           # libvirt xml file used to define a vm
            |-- vm1.sys           # sys disk of vm: vda
            |-- vm1.data          # data disk of vm: vdb
            `-- vm1.swap          # swap disk of vm: vdc


## deploy-vm.py Help

```bash
./deploy-vm.py --help
```

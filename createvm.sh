#!/bin/bash 

echo "this playbook will create VMs "
echo "------------------------------------"

echo "enter host ip to manage:"
read HOST

echo "enter ssh username:"
read USER

echo "enter VM Template name (only centos8, ubuntu18 and ubuntu20 are supported ):"
read VMTEMPLATE

echo "enter VM name to be created:"
read VMNAME

ansible-playbook -i $HOST, createvm.yaml -u $USER -kK -e user=$USER --extra-vars="vmtemplate=$VMTEMPLATE vmname=$VMNAME"




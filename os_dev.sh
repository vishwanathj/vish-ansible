#!/bin/bash 

echo "manage openstack development systems"
echo "this playbook will deploy pycharms, "
echo "vnc, and other stuff"
echo "------------------------------------"

echo "enter host ip to manage:"
read HOST

echo "enter ssh username:"
read USER

echo "install pycharm4 or pycharm5 (choose '4' or '5')"
read PYCHARM_VER

# check mode
# ansible-playbook -i $HOST, site.yaml -u $USER -C -kK -e user=$USER --extra-vars=pycharm_ver=$PYCHARM_VER

ansible-playbook -i $HOST, site.yaml -u $USER -kK -e user=$USER --extra-vars="pycharm_ver=$PYCHARM_VER user=$USER"




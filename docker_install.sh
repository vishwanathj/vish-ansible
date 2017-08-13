#!/bin/bash 

echo "this playbook will deploy docker and docker-compose, "
echo "------------------------------------"

echo "enter host ip to manage:"
read HOST

echo "enter ssh username:"
read USER

ansible-playbook -i $HOST, docker_install.yaml -u $USER -kK -e user=$USER




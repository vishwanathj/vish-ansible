#!/bin/bash 

echo "this playbook will install openjdk or oracle jdk"
echo "------------------------------------"

echo "enter host ip to manage:"
read HOST

echo "enter ssh username:"
read USER

#echo "enter java version (only 6, 7, 8 and 9 are supported at this time):"
#read JAVA_VERSION

#echo "enter java type (only openjdk or oracle is supported)"
#read JAVA_TYPE

#ansible-playbook -i $HOST, installjava.yaml -u $USER -kK -e user=$USER --extra-vars="java_version=$JAVA_VERSION java_type=$JAVA_TYPE"

ansible-playbook -i $HOST, installjava.yaml -u $USER -kK -e user=$USER



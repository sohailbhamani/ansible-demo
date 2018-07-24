#!/usr/bin/env bash

# update apt-get
echo "##############"
echo " Updating Apt"
echo "##############"
apt-get update

# clean up apt 
echo "#####################"
echo " Performing Clean Up"
echo "#####################"
apt-get autoremove -y
apt-get clean

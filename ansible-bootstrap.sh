#!/usr/bin/env bash

# update apt-get
echo "##############"
echo " Updating Apt"
echo "##############"
apt-get update

# install packages
echo "####################"
echo " Installing Ansible"
echo "####################"
apt-get install -y ansible

# install pip
echo "################"
echo " Installing Pip"
echo "################"
pip install -U pip && pip3 install -U pip
if [[ $? == 127 ]]; then
    wget -q https://bootstrap.pypa.io/get-pip.py
    python get-pip.py
    python3 get-pip.py
fi

# copy postinstall script to vagrant user home dir and change permissions
#cp /vagrant/ansible-postinstall.sh /home/vagrant/postinstall.sh
#chown vagrant:vagrant /home/vagrant/postinstall.sh

# clean up apt 
echo "#####################"
echo " Performing Clean Up"
echo "#####################"
apt-get autoremove -y
apt-get clean

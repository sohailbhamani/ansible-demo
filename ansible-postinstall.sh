# generate ssh keypair and copy public to /vagrant
echo "########################"
echo " Generating SSH Keypair"
echo "########################"
yes | ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -q -N "passphrase"
yes | cp /home/vagrant/.ssh/id_rsa.pub /vagrant/ansible-id_rsa.pub
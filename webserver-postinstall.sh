# echo ansible public key into authorized_keys (root)
echo "#####################"
echo " Copying SSH Keypair"
echo "#####################"
sudo -s | echo `cat /vagrant/ansible-id_rsa.pub` > /root/.ssh/authorized_keys
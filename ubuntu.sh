#!/bin/bash
echo $(hostname -I | cut -d\  -f1) $(hostname) | sudo tee -a /etc/hosts
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install python wget netcat-openbsd unzip
curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
sudo python get-pip.py
pip install --upgrade pip
pip install --user virtualenv
mkdir ~/venv
virtualenv ~/venv
source ~/venv/bin/activate
echo "source venv/bin/activate" >> ~/.bash_profile
pip install boto
pip install boto3
pip install awscli
pip install -I ansible
pip install credstash
curl https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip --output terraform_0.11.8_linux_amd64.zip
sudo unzip terraform_0.11.8_linux_amd64.zip -d /usr/bin
curl https://releases.hashicorp.com/packer/1.2.5/packer_1.2.5_linux_amd64.zip --output packer_1.2.5_linux_amd64.zip
sudo unzip packer_1.2.5_linux_amd64.zip -d /usr/bin
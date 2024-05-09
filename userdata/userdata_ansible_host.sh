#!/bin/bash
#Update system packages
sudo apt update && sudo apt upgrade -y
#install necessary packages
sudo apt install software-properties-common unzip -y
#Add Ansible PRA and install Ansible
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
#Install AWS CLI version 2
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip awscliv2.zip
sudo ./aws/install
# Configure SSH keys using AWS Secrets Manager
sudo mkdir -p /root/.ssh
sudo aws s3 cp s3://dg-cohort-01/dg-israel-ibrahim-key-pair/id_rsa_en64.pub - | base64 --decode > /home/ubuntu/.ssh/id_rsa.pub
sudo aws s3 cp s3://dg-cohort-01/dg-israel-ibrahim-key-pair/id_rsa_en64 - | base64 --decode > /home/ubuntu/.ssh/id_rsa
sudo chmod 600 /home/ubuntu/.ssh/id_rsa

sudo chown -R ubuntu:ubuntu /opt
sudo chown -R ubuntu:ubuntu /home/ubuntu/.ssh
# Clone git repository /opt/dg-ansible-playbooks
GIT_SSH_COMMAND='ssh -i /home/ubuntu/.ssh/id_rsa -o UserKnownHostFile=/dev/null -o StrictHostKeyChecking=no' git clone git@github.com:deployguru-learning/dg-ansible-playbooks.git

sudo apt install python3.12-venv -y
#!/bin/bash
# Update system packages
sudo apt update && sudo apt upgrade -y
# Install necessary packages
sudo apt install unzip -y
# Install AWS CLI version 2
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip awscliv2.zip
sudo ./aws/install
# Configure SSH keys using AWS Secrets Manager
sudo aws s3 cp s3://dg-cohort-01/dg-israel-ibrahim-key-pair/id_rsa_en64.pub - | base64 --decode >> /home/ubuntu/.ssh/authorized_keys
sudo chown -R ubuntu:ubuntu .ssh
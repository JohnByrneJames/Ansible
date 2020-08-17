#!/bin/bash

sudo apt-get update -y

# Get dependencies for Ansible
sudo apt-get install software-properties-common -y

# Get packages from ansible repository
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get update -y

# Get install Ansible
sudo apt-get install ansible -y
sudo apt-get update -y

# Check Ansible version
sudo ansible --version

# Install tree package manager (display files and dir)
sudo apt-get install tree -y

# Remove old hosts file and copy in new one
# sudo rm /etc/ansible/hosts
# sudo cp /h
#!/bin/bash
set -e

apt-get update -y
echo "-upgrade-"
apt-get upgrade -y
echo "-install unzip-"
apt-get install unzip -y
echo "-Install wget-"
apt-get install wget -y

echo "-dl-"
wget https://releases.hashicorp.com/terraform/0.13.1/terraform_0.13.1_linux_amd64.zip

echo "-unzip-"
unzip terraform_0.13.1_linux_amd64.zip

echo "-mv-"
mv terraform /usr/local/bin/
terraform --version


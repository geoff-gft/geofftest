#!/bin/bash
set -e
uname -srm
uname --kernel-name --kernel-release --machine

apt-get update -y
echo "upgrade"
apt-get upgrade -y
echo "install unzip"
apt-get install unzip -y
echo "Install wget"
install wget

echo "dl"
wget https://releases.hashicorp.com/terraform/0.13.1/terraform_0.13.1_linux_amd64.zip

echo "unzip"
unzip terraform_0.13.1_linux_amd64.zip

echo "mv"
mv terraform /usr/local/bin/
terraform --version

echo "Remove zip file---------------"
rm -f terraform_1.0.9_linux_amd64.zip



VERSION_INSTALLED="$(terraform -version)"
echo "Version installed: ${VERSION_INSTALLED}"

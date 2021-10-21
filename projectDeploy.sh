#!/bin/bash
set -e
uname -srm
uname --kernel-name --kernel-release --machine

apt-get update
apt-get upgrade
apt-get install unzip
install wget

wget https://releases.hashicorp.com/terraform/0.13.1/terraform_0.13.1_linux_amd64.zip
unzip terraform_0.13.1_linux_amd64.zip
mv terraform /usr/local/bin/
terraform --version

echo "Remove zip file---------------"
rm -f terraform_1.0.9_linux_amd64.zip



VERSION_INSTALLED="$(terraform -version)"
echo "Version installed: ${VERSION_INSTALLED}"

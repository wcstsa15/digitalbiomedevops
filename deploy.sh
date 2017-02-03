#!/bin/bash

# Usage: ./deploy.sh [host]
#Courtesy of http://www.opinionatedprogrammer.com/2011/06/chef-solo-tutorial-managing-a-single-server-with-chef/

host="${1:-root@138.197.114.17}"

# The host key might change when we instantiate a new VM, so
# we remove (-R) the old host key from known_hosts
#tar cpf . | ssh -tt -o 'StrictHostKeyChecking no' "$host" ' --Old
ssh-keygen -R "${host#*@}" 2> /dev/null

tar cpf - . | ssh -o 'StrictHostKeyChecking no' "$host" '
rm -rf ~/chef &&
mkdir ~/chef &&
cd ~/chef &&
tar xpf - ./ &&
bash install.sh'
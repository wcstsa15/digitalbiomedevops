#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
# Upgrade headlessly (this is only safe-ish on vanilla systems)
apt-get update &&
apt-get -o Dpkg::Options::="--force-confnew" --force-yes -fuy dist-upgrade &&
    # Install Ruby and Chef
#apt-get install -y ruby build-essential ruby-dev
#gem install --no-rdoc --no-ri chef
apt-get install nginx

ufw allow 'Nginx HTTP'
ufw allow 'OpenSSH'
ufw allow 'ssh'
ufw --force enable

reboot
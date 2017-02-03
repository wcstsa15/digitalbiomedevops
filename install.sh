#!/bin/bash
# This runs as root on the server
# Are we on a vanilla system?
export DEBIAN_FRONTEND=noninteractive
# Upgrade headlessly (this is only safe-ish on vanilla systems)
apt-get update &&
apt-get -o Dpkg::Options::="--force-confnew" --force-yes -fuy dist-upgrade &&
    # Install Ruby and Chef
apt-get install -y ruby build-essential ruby-dev
gem install --no-rdoc --no-ri chef
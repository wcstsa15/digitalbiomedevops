local computer
given:
user:root
password:password
host:ip address

# https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server
gen ssh key

ssh-copy-id user@host

adduser localuser
usermod -aG sudo localuser

# modify ssh_config
# PasswordAuthentication no

# Install nginx

#update firewall

ufw app list

sudo ufw allow 'ssh'
sudo ufw allow 'OpenSSH'
sudo ufw allow 'Nginx HTTP'

sudo ufw enable

sudo apt-get update
sudo apt-get install nginx


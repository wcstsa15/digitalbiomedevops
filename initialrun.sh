host="${1:-root@138.197.114.17}"

ssh-keygen -R "${host#*@}" 2> /dev/null
#Run in terminal to set password
#ssh root@host
#ssh-copy-id "$host"
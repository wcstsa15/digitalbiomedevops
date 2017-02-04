git config --global user.name "wcstsa15"
git config --global user.email "wcstsa15@gmail.com"

repodir=/usr/share/projects
webrootdir=/var/www/html

if [ ! -d "$repodir" ]; then
  # Control will enter here if $DIRECTORY exists.
    mkdir $repodir
    cd $repodir
    git clone https://github.com/wcstsa15/digitalbiomesite.git
fi

if [ -d "$repodir" ]; then
    cd $repodir/digitalbiomesite
    git pull origin master
    cp -ra $repodir/digitalbiomesite/. $webrootdir
fi
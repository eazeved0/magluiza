#!/bin/bash

set -e -x

# Needed so that the aptitude/apt-get operations will not be interactive
export DEBIAN_FRONTEND=noninteractive

add-apt-repository ppa:formorer/icinga --yes
apt-get --yes --quiet update && apt-get -y --quiet upgrade && apt-get -y --quiet install htop git awscli

wget -qO- https://get.docker.com/ | sh

git clone https://github.com/eazeved0/magluiza.git && cd magluiza

docker pull eazevedo/magluiza && docker run -p 8000:80 --name magluiza -v /var/www/html:/var/www/html -d eazevedo/magluiza
cp index.php /var/www/html/

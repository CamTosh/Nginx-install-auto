#!/bin/bash
#------------------
# Install Nginx
#------------------
# Installation from source:
readonly NGINX_DIR=/opt/nginx
apt-get install -y libpcre3-dev
apt-get install -y libpcre3
apt-get install -y zlib1g-dev
apt-get install -y zlib1g

wget http://nginx.org/download/nginx-1.8.0.tar.gz
# --------------------------
# tar xvzf (.tgz or tar.gz)
# tar xvjf (.tbz or .tar.bz2)
# tar xvf (.tar)
# --------------------------
sudo tar xvf nginx-1.8.0.tar.gz
cd nginx-1.8.0
./configure --prefix=$NGINX_DIR
make
make install
ln -s $NGINX_DIR/sbin/nginx /usr/sbin
cd -
# use nginx=development for latest development version
# apt-add-repository ppa:nginx/stable
# apt-get update
# apt-get install -y nginx

#! /bin/sh -xe

NGINX_VER=1.7.11
LDAP_MODULE_URI="https://github.com/kvspb/nginx-auth-ldap.git"

NGINX_FILENAME="$NGINX_VER.tar.gz"
NGINX_URI="http://nginx.org/download/nginx-$NGINX_FILENAME"

mkdir -p tmp/
wget $NGINX_URI -O "tmp/$NGINX_FILENAME"
git clone $LDAP_MODULE_URI tmp/nginx-auth-ldap

cd tmp
tar xf "$NGINX_FILENAME"
cd "nginx-$NGINX_VER"

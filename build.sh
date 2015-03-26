#! /bin/sh -xe

./configure \
	--prefix=/opt/nginx \
	--add-module=../nginx-auth-ldap \
	--with-http_ssl_module \
	--with-http_spdy_module \
	--with-http_gzip_static_module \
	--with-http_stub_status_module \
	--with-http_realip_module \
	--conf-path=/etc/nginx/nginx.conf \
	--error-log-path=/var/log/nginx/error.log

make -j3
sudo killall nginx
sudo rm -rf /opt/nginx
sudo make install
sudo /opt/nginx/sbin/nginx


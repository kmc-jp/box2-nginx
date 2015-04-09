# hparam.pem

````
sudo sh -c 'touch /etc/nginx/dhparam.pem && chown www-data:root /etc/nginx/dhparam.pem && chmod 660 /etc/nginx/dhparam.pem && openssl dhparam -out /etc/nginx/dhparam.pem 2048 && chmod 440 /etc/nginx/dhparam.pem'`
````

#!/bin/sh

for i in `ls /var/www/html/plugins`; do
    cp /var/www/html/plugins/* /var/www/html/plugins-enabled/
done
rm -rf /var/www/html/plugins-enabled/plugin.php

rm -rf /var/www/html/adminer.css
ln -sf /var/www/html/designs/${ADMINER_DESIGN}/adminer.css /var/www/html/adminer.css

php -S [::]:${ADMINER_PORT} -t /var/www/html

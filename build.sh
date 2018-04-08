#!/usr/bin/sh
set -e
hugo
scp -r public/* root@web-temp.port-zero.com:/srv/www/port-zero.com/html
ssh root@web-temp.port-zero.com systemctl reload nginx.service

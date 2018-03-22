#!/usr/bin/sh
set -e
hugo
scp -r public/* root@web-temp.port-zero.com:/var/www/port-zero.com/html
ssh root@web-temp.port-zero.com systemctl restart caddy

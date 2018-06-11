#!/usr/bin/sh
set -e
hugo
scp -r public/* root@web01.port-ze.ro:/srv/www/staging.port-zero.com/html
